open Asm

external gethi : float -> int32 = "gethi"
(* external getlo : float -> int32 = "getlo" *)

let stackset = ref S.empty (* すでにSaveされた変数の集合 *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
    stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = align ((List.length !stackmap + 1) * 4)

let reg r =
  if is_reg r
  then String.sub r 1 (String.length r - 1)
  else r

let load_label oc r label =
  let r' = reg r in
  Printf.fprintf oc
    "\tlahi\t%s, %s\n\tlalo\t%s, %s\n"
    r' label r' label
 

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                                         (function
                                           | (y', z) when y = y' -> (sw, z)
                                           | yz -> yz)
                                         xys)
  | xys, acyc -> acyc @ shuffle sw xys

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g oc = function (*　命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット　(caml2html: emit_nontail) *)
  | NonTail(_), Nop -> () (* ok *)
  | NonTail(x), Li(i) when -32768 <= i && i < 32768 -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg x) (reg reg_zero) i (* ok *)
  | NonTail(x), Li(i) ->
      let n = i lsr 16 in             (* iを右に16ビット右シフト *)
      let m = i lxor (n lsl 16) in
      let r = reg x in
      Printf.fprintf oc "\tlui\t%s, %d\n" r n;
      Printf.fprintf oc "\tori\t%s, %s, %d\n" r r m
  (* | NonTail(x), FLi(Id.L(l)) ->
      let s = load_label (reg reg_tmp) l in
      Printf.fprintf oc "%s\tlfd\t%s, 0(%s)\n" s (reg x) (reg reg_tmp) *)
  | NonTail(x), FLi(f) ->
     let i = Int32.bits_of_float f in
     let a = Int32.shift_right i 16 in
     let b = Int32.logand i (Int32.of_int 65535) in
     (* Printf.fprintf oc "\tlui\t$s0, %d\n" (Int32.to_int a);
     Printf.fprintf oc "\tori\t$s0, $s0, %d\n" (Int32.to_int b);
     Printf.fprintf oc "\tmtc1\t$s0, %s\n" (reg x) *)
     Printf.fprintf oc "\tflui\t%s, %d\n" (reg x) (Int32.to_int a);
     if (Int32.to_int b = 0) then () else
     Printf.fprintf oc "\tfori\t%s, %s, %d\n" (reg x) (reg x) (Int32.to_int b);
  | NonTail(x), SetL(Id.L(y)) ->
      (* let s = load_label x y in
      Printf.fprintf oc "%s" s *)
      load_label oc x y
  | NonTail(x), Mr(y) when x = y -> ()  (* move register ですねー*)  (* ok *)
  | NonTail(x), Mr(y) -> Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg x) (reg y) (reg reg_zero) (* ok *)
  | NonTail(x), Neg(y) -> Printf.fprintf oc "\tsub\t%s, %s, %s\n" (reg x) (reg reg_zero) (reg y)    (* ok *)
  | NonTail(x), Add(y, V(z)) -> Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)   (* ok *)
  | NonTail(x), Add(y, C(z)) -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg x) (reg y) z  (* ok *)
  | NonTail(x), Sub(y, V(z)) -> Printf.fprintf oc "\tsub\t%s, %s, %s\n" (reg x) (reg y) (reg z) (* ok *)
  | NonTail(x), Sub(y, C(z)) -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg x) (reg y) (-1 * z)  (* ok *)
  (* | NonTail(x), Slw(y, V(z)) -> Printf.fprintf oc "\tsll\t%s, %s, %s\n" (reg x) (reg y) (reg z) *)
  | NonTail(x), Slw(y, C(z)) -> Printf.fprintf oc "\tsll\t%s, %s, %d\n" (reg x) (reg y) z  (* shift left word  ok!*)
  | NonTail(x), Slr(y, C(z)) -> Printf.fprintf oc "\tsrl\t%s, %s, %d\n" (reg x) (reg y) z  (* shift right word  ok!*)
  | NonTail(x), Lwz(y, V(z)) -> (* ok *)
    Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg reg_my_temp) (reg y) (reg z);
    Printf.fprintf oc "\tlw\t%s, 0(%s)\n" (reg x) (reg reg_my_temp)
  | NonTail(x), Lwz(y, C(z)) -> Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) z (reg y)  (* ok *) 
  | NonTail(x), Lwc(i) -> Printf.fprintf oc "\tlw\t%s, %d($zero)\n" (reg x) i (* ok *) 
  | NonTail(x), Lwfc(i) -> Printf.fprintf oc "\tlwc1\t%s, %d($zero)\n" (reg x) i (* ok *) 
  | NonTail(_), Stw(x, y, V(z)) ->    (* ok *)
    Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg reg_my_temp) (reg y) (reg z);
    Printf.fprintf oc "\tsw\t%s, 0(%s)\n" (reg x) (reg reg_my_temp)
  | NonTail(_), Stw(x, y, C(z)) -> Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) z (reg y) (* ok *)
  | NonTail(_), Swc(x, i) -> Printf.fprintf oc "\tsw\t%s, %d($zero)\n" (reg x) i  (* ok *) 
  | NonTail(_), Swfc(x, i) -> Printf.fprintf oc "\tswc1\t%s, %d($zero)\n" (reg x) i  (* ok *) 
  | NonTail(_), Swfcz(i) -> Printf.fprintf oc "\tswc1\t%s, %d($zero)\n" (reg reg_fzero) i  (* ok *) 
  | NonTail(x), FMr(y) when x = y -> ()
  | NonTail(x), FMr(y) -> Printf.fprintf oc "\tadd.s\t%s, %s, $fzero\n" (reg x) (reg y) (* ok *)
  | NonTail(x), FNeg(y) -> Printf.fprintf oc "\tsub.s\t%s, $fzero, %s\n" (reg x) (reg y) (* ok *)
  | NonTail(x), FAdd(y, z) -> Printf.fprintf oc "\tadd.s\t%s, %s, %s\n" (reg x) (reg y) (reg z) (* ok *)
  | NonTail(x), FSub(y, z) -> Printf.fprintf oc "\tsub.s\t%s, %s, %s\n" (reg x) (reg y) (reg z) (* ok *)
  | NonTail(x), FMul(y, z) -> Printf.fprintf oc "\tmul.s\t%s, %s, %s\n" (reg x) (reg y) (reg z) (* ok *)
  | NonTail(x), FDiv(y, z) -> Printf.fprintf oc "\tdiv.s\t%s, %s, %s\n" (reg x) (reg y) (reg z) (* ok *)
  | NonTail(x), Lfd(y, V(z)) ->    (* ok *)
    Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg reg_my_temp) (reg y) (reg z);
    Printf.fprintf oc "\tlwc1\t%s, 0(%s)\n" (reg x) (reg reg_my_temp)
  | NonTail(x), Lfd(y, C(z)) -> Printf.fprintf oc "\tlwc1\t%s, %d(%s)\n" (reg x) z (reg y)  (* ok *)
  | NonTail(_), Stfd(x, y, V(z)) ->     (* ok *)
    Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg reg_my_temp) (reg y) (reg z);
    Printf.fprintf oc "\tswc1\t%s, 0(%s)\n" (reg x) (reg reg_my_temp)
  | NonTail(_), Stfdz(y, V(z)) ->     (* ok *)
    Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg reg_my_temp) (reg y) (reg z);
    Printf.fprintf oc "\tswc1\t%s, 0(%s)\n" (reg reg_fzero) (reg reg_my_temp)
  | NonTail(_), Stfd(x, y, C(z)) -> Printf.fprintf oc "\tswc1\t%s, %d(%s)\n" (reg x) z (reg y)   (* ok *)
  | NonTail(_), Stfdz(y, C(z)) -> Printf.fprintf oc "\tswc1\t%s, %d(%s)\n" (reg reg_fzero) z (reg y)   (* ok *)
  | NonTail(_), Comment(s) -> Printf.fprintf oc "#\t%s\n" s    (* ok *)
  (* 退避の仮想命令の実装(caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tswc1\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tlwc1\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  (* 末尾だったら計算結果を第一レジスタにセットしてret (caml2html: emit_tailret) *)
  | Tail, (Nop | Stw _ | Stfd _ | Comment _ | Save _ | Swc _ | Swfc _ | Stfdz _ | Swfcz _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      Printf.fprintf oc "\tjr\t$ra\n";
  | Tail, (Li _ | SetL _ | Mr _ | Neg _ | Add _ | Sub _ | Slw _ | Slr _ | Lwz _ | Lwc _ as exp) ->
      g' oc (NonTail(regs.(0)), exp);
      Printf.fprintf oc "\tjr\t$ra\n";
  | Tail, (FLi _ | FMr _ | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _ | Lfd _ | Lwfc _ as exp) ->
      g' oc (NonTail(fregs.(0)), exp);
      Printf.fprintf oc "\tjr\t$ra\n";
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      Printf.fprintf oc "\tjr\t$ra\n";
  | Tail, IfEq(x, V(y), e1, e2) ->    (* ok *)
      let b_else = Id.genid ("bne_else") in
      Printf.fprintf oc "\tbne\t%s, %s, %s\n" (reg x) (reg y) b_else;
      let stackset_back = !stackset in
      g oc (Tail, e1);
      Printf.fprintf oc "%s:\n" b_else;
      stackset := stackset_back;
      g oc (Tail, e2)
  | Tail, IfEq(x, C(y), e1, e2) ->    (* ok *)
      let b_else = Id.genid ("bne_else") in
      (if y = 0 then               (* 覗き穴最適化  定数と比較の時 定数が0ならば短くなる　*)
      (Printf.fprintf oc "\tbne\t%s, %s, %s\n" (reg x) (reg reg_zero) b_else;)
      else
      (Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_my_temp) (reg reg_zero) y;
      Printf.fprintf oc "\tbne\t%s, %s, %s\n" (reg x) (reg reg_my_temp) b_else;));
      let stackset_back = !stackset in
      g oc (Tail, e1);
      Printf.fprintf oc "%s:\n" b_else;
      stackset := stackset_back;
      g oc (Tail, e2)
   | Tail, IfLT(x, V(y), e1, e2) ->  (* ok *)
      Printf.fprintf oc "\tslt\t$s0, %s, %s\n" (reg x) (reg y);  (*  (y < x thenとelseを逆に)   x <= y  *)
      g'_tail_if oc e1 e2 "bne" "beq"
  | Tail, IfLT(x, C(y), e1, e2) ->  (* ok *)
      Printf.fprintf oc "\tslti\t$s0, %s, %d\n" (reg x) y; 
      g'_tail_if oc e1 e2 "bne" "beq"
  | Tail, IfFEq(x, y, e1, e2) -> 
    let b_else = Id.genid ("c.ne_else") in
    Printf.fprintf oc "\tc.eq.s\t%s, %s, %s\n" (reg reg_my_temp) (reg x) (reg y);
    Printf.fprintf oc "\tbeq\t%s, %s, %s\n" (reg reg_my_temp) (reg reg_zero) b_else;
    let stackset_back = !stackset in
    g oc (Tail, e1);
    Printf.fprintf oc "%s:\n" b_else;
    stackset := stackset_back;
    g oc (Tail, e2)
  | Tail, IfFEqz(x, e1, e2) -> 
    let b_else = Id.genid ("c.ne_else") in
    Printf.fprintf oc "\tc.eq.s\t%s, %s, %s\n" (reg reg_my_temp) (reg x) (reg reg_fzero);
    Printf.fprintf oc "\tbeq\t%s, %s, %s\n" (reg reg_my_temp) (reg reg_zero) b_else;
    let stackset_back = !stackset in
    g oc (Tail, e1);
    Printf.fprintf oc "%s:\n" b_else;
    stackset := stackset_back;
    g oc (Tail, e2)
  | Tail, IfFLT(x, y, e1, e2) ->    (* ok *)
      Printf.fprintf oc "\tc.lt.s\t$s0, %s, %s\n" (reg x) (reg y);       
      g'_tail_if oc e1 e2 "bne" "beq"
  | Tail, IfFLTz(x, e1, e2) ->    (* ok *)
      Printf.fprintf oc "\tc.lt.s\t$s0, %s, %s\n" (reg x) (reg reg_fzero);       
      g'_tail_if oc e1 e2 "bne" "beq"
  | Tail, IfFGTz(x, e1, e2) ->    (* ok *)
      Printf.fprintf oc "\tc.lt.s\t$s0, %s, %s\n" (reg reg_fzero) (reg x);       
      g'_tail_if oc e1 e2 "bne" "beq"
  | NonTail(z), IfEq(x, V(y), e1, e2) -> (* ok *)
      let dest = NonTail(z) in
      let b = "beq" in
      let b_else = Id.genid (b ^ "_else") in
      let b_cont = Id.genid (b ^ "_cont") in
      Printf.fprintf oc "\tbne\t%s, %s, %s\n" (reg x) (reg y) b_else;
      let stackset_back = !stackset in
      g oc (dest, e1);
      let stackset1 = !stackset in
      Printf.fprintf oc "\tj\t%s\n" b_cont;
      Printf.fprintf oc "%s:\n" b_else;
      stackset := stackset_back;
      g oc (dest, e2);
      Printf.fprintf oc "%s:\n" b_cont;
      let stackset2 = !stackset in
      stackset := S.inter stackset1 stackset2
  | NonTail(z), IfEq(x, C(y), e1, e2) -> (* ok *)
      let dest = NonTail(z) in
      let b = "beq" in
      let b_else = Id.genid (b ^ "_else") in
      let b_cont = Id.genid (b ^ "_cont") in
      (if y = 0 then   (* 覗き穴最適化  定数と比較の時 定数が0ならば短くなる　*)
      (Printf.fprintf oc "\tbne\t%s, %s, %s\n" (reg x) (reg reg_zero) b_else;)
      else 
      ((Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_my_temp) (reg reg_zero) y;
      Printf.fprintf oc "\tbne\t%s, %s, %s\n" (reg x) (reg reg_my_temp) b_else;)));
      let stackset_back = !stackset in
      g oc (dest, e1);
      let stackset1 = !stackset in
      Printf.fprintf oc "\tj\t%s\n" b_cont;
      Printf.fprintf oc "%s:\n" b_else;
      stackset := stackset_back;
      g oc (dest, e2);
      Printf.fprintf oc "%s:\n" b_cont;
      let stackset2 = !stackset in
      stackset := S.inter stackset1 stackset2
  (* | NonTail(z), IfLE(x, V(y), e1, e2) ->  (*  ok    *)
      Printf.fprintf oc "\tslt\t$s0, %s, %s\n" (reg y) (reg x); 
      g'_non_tail_if oc (NonTail(z)) e2 e1 "bne" "beq" *)
  | NonTail(z), IfLT(x, V(y), e1, e2) ->  (*  ok  *)
      Printf.fprintf oc "\tslt\t$s0, %s, %s\n" (reg x) (reg y);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bne" "beq"
   | NonTail(z), IfLT(x, C(y), e1, e2) ->  (*  ok  *)
      Printf.fprintf oc "\tslti\t$s0, %s, %d\n" (reg x) y;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bne" "beq"
  (* | NonTail(z), IfLE(x, C(y), e1, e2) ->  (*  ok  *)
      Printf.fprintf oc "\tslti\t$s0, %s, %d\n" (reg x) (y + 1);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bne" "beq" *)
  (* | NonTail(z), IfGE(x, V(y), e1, e2) ->  (*  ok  *)
      Printf.fprintf oc "\tslt\t$s0, %s, %s\n" (reg x) (reg y); 
      g'_non_tail_if oc (NonTail(z)) e2 e1 "bne" "beq" *)
  (* | NonTail(z), IfGE(x, C(y), e1, e2) ->  (*  ok  *)
      Printf.fprintf oc "\tslti\t$s0, %s, %d\n" (reg x) y;
      g'_non_tail_if oc (NonTail(z)) e2 e1 "bne" "beq" *)
  | NonTail(z), IfFEq(x, y, e1, e2) ->
    let dest = NonTail(z) in
    let b = "c.eq" in
    let b_else = Id.genid (b ^ "_else") in
    let b_cont = Id.genid (b ^ "_cont") in
    Printf.fprintf oc "\tc.eq.s\t%s, %s, %s\n" (reg reg_my_temp) (reg x) (reg y);
    Printf.fprintf oc "\tbeq\t%s, %s, %s\n" (reg reg_my_temp) (reg reg_zero) b_else;
    let stackset_back = !stackset in
    g oc (dest, e1);
    let stackset1 = !stackset in
    Printf.fprintf oc "\tj\t%s\n" b_cont;
    Printf.fprintf oc "%s:\n" b_else;
    stackset := stackset_back;
    g oc (dest, e2);
    Printf.fprintf oc "%s:\n" b_cont;
    let stackset2 = !stackset in
    stackset := S.inter stackset1 stackset2
  | NonTail(z), IfFEqz(x, e1, e2) ->
    let dest = NonTail(z) in
    let b = "c.eq" in
    let b_else = Id.genid (b ^ "_else") in
    let b_cont = Id.genid (b ^ "_cont") in
    Printf.fprintf oc "\tc.eq.s\t%s, %s, %s\n" (reg reg_my_temp) (reg x) (reg reg_fzero);
    Printf.fprintf oc "\tbeq\t%s, %s, %s\n" (reg reg_my_temp) (reg reg_zero) b_else;
    let stackset_back = !stackset in
    g oc (dest, e1);
    let stackset1 = !stackset in
    Printf.fprintf oc "\tj\t%s\n" b_cont;
    Printf.fprintf oc "%s:\n" b_else;
    stackset := stackset_back;
    g oc (dest, e2);
    Printf.fprintf oc "%s:\n" b_cont;
    let stackset2 = !stackset in
    stackset := S.inter stackset1 stackset2
  | NonTail(z), IfFLT(x, y, e1, e2) ->  (* ok   x <= y then e1 else e2 ----> x > y then e2 else e1  ----> y < x then e2 else e1    *)
      Printf.fprintf oc "\tc.lt.s\t$s0, %s, %s\n" (reg x) (reg y);       
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bne" "beq"
  | NonTail(z), IfFLTz(x, e1, e2) ->  (* ok   x <= y then e1 else e2 ----> x > y then e2 else e1  ----> y < x then e2 else e1    *)
      Printf.fprintf oc "\tc.lt.s\t$s0, %s, %s\n" (reg x) (reg reg_fzero);       
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bne" "beq"
  | NonTail(z), IfFGTz(x, e1, e2) ->  (* ok   x <= y then e1 else e2 ----> x > y then e2 else e1  ----> y < x then e2 else e1    *)
      Printf.fprintf oc "\tc.lt.s\t$s0, %s, %s\n" (reg reg_fzero) (reg x);       
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bne" "beq"
  (* 関数呼び出しの仮想命令実実装 (caml2html: emit_call) *)
  (* | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tlw\t%s, 0(%s)\n" (reg reg_sw) (reg reg_cl);
      (* Printf.fprintf oc "\tmtctr\t%s\n\tbctr\n" (reg reg_sw); *)
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_sw) *)
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し 多分 ok *)
      g'_args oc [] ys zs;
      if x = "min_caml_sqrt" then Printf.fprintf oc "\tsqrt\t$f0, $f0\n\tjr\t$ra\n" else
      if x = "min_caml_floor" then Printf.fprintf oc "\tfloor\t$f0, $f0\n\tjr\t$ra\n" else
      if x = "min_caml_int_of_float" then Printf.fprintf oc "\tftoi\t$a0, $f0\n\tjr\t$ra\n" else
      if x = "min_caml_float_of_int" then Printf.fprintf oc "\titof\t$f0, $a0\n\tjr\t$ra\n" else
      if x = "min_caml_print_char" then Printf.fprintf oc "\toutc\t$a0\n\tjr\t$ra\n" else
      if x = "min_caml_print_int" then Printf.fprintf oc "\touti\t$a0\n\tjr\t$ra\n" else
      if x = "min_caml_read_int" then Printf.fprintf oc "\treadi\t$a0\n\tjr\t$ra\n" else
      if x = "min_caml_read_float" then Printf.fprintf oc "\treadf\t$f0\n\tjr\t$ra\n" else
      Printf.fprintf oc "\tj\t%s\n" x
  (* | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg reg_ra) (ss - 4) (reg reg_sp);
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) ss;
      Printf.fprintf oc "\tlw\t%s, 0(%s)\n" (reg reg_sw) (reg reg_cl);

      let tmp_label = Id.genid "tmp" in
      load_label oc (reg reg_ra) tmp_label;
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_sw);
      Printf.fprintf oc "%s:\n" tmp_label;

      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) (-1 * ss);
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg reg_ra) (ss - 4) (reg reg_sp);
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg a) (reg regs.(0)) (reg reg_zero)
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tadd.s\t%s, $fzero, %s\n" (reg a) (reg fregs.(0)); *)
  | (NonTail(a), CallDir(Id.L(x), ys, zs)) ->
      g'_args oc [] ys zs;
  ( 
      if x = "min_caml_sqrt" then Printf.fprintf oc "\tsqrt\t$f0, $f0\n" else
      if x = "min_caml_floor" then Printf.fprintf oc "\tfloor\t$f0, $f0\n" else
      if x = "min_caml_int_of_float" then Printf.fprintf oc "\tftoi\t$a0, $f0\n" else
      (* if x = "min_caml_truncate" then Printf.fprintf oc "\tfloor\t$f0, $f0\n" else *)
      if x = "min_caml_float_of_int" then Printf.fprintf oc "\titof\t$f0, $a0\n" else
      if x = "min_caml_print_char" then Printf.fprintf oc "\toutc\t$a0\n" else
      if x = "min_caml_print_int" then Printf.fprintf oc "\touti\t$a0\n" else
      if x = "min_caml_read_int" then Printf.fprintf oc "\treadi\t$a0\n" else
      if x = "min_caml_read_float" then Printf.fprintf oc "\treadf\t$f0\n" else
      if x = "min_caml_create_array" then (
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg reg_ra) (ss - 4) (reg reg_sp);
      Printf.fprintf oc "\tjal\t%s\n" x;
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg reg_ra) (ss - 4) (reg reg_sp) )
      else if x = "min_caml_create_float_array" then 
      (
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg reg_ra) (ss - 4) (reg reg_sp);
      Printf.fprintf oc "\tjal\t%s\n" x;
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg reg_ra) (ss - 4) (reg reg_sp)
      )
       else
       ( 
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg reg_ra) (ss - 4) (reg reg_sp);
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) ss;
      Printf.fprintf oc "\tjal\t%s\n" x;
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) (-1 * ss);
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg reg_ra) (ss - 4) (reg reg_sp);  ) );
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg a) (reg regs.(0)) (reg reg_zero)
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tadd.s\t%s, $fzero, %s\n" (reg a) (reg fregs.(0)); 
      (* Printf.fprintf oc "\tmtlr\t%s\n" (reg reg_tmp) *)
and g'_tail_if oc e1 e2 b bn =   (*本質的に命令に関係するのはbnのみ*)
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t$s0, $zero, %s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t$s0, $zero, %s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tj\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs = (* まだあまり見ていないが、恐らく関数呼び出しで飛ぶときに引数にセット(必要な値を保存した後) *)
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg r) (reg reg_zero) (reg y))
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) -> Printf.fprintf oc "\tadd.s\t%s, $fzero, %s\n" (reg fr) (reg z))
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e, _)) =
  Format.eprintf "generating assembly...@.";
  if data <> [] then
    (Printf.fprintf oc "\t.data\n\t.literal8\n";
     List.iter
       (fun (Id.L(x), d) ->
         Printf.fprintf oc "\t.align 3\n";
         Printf.fprintf oc "%s:\t # %f\n" x d;
         Printf.fprintf oc "\t.long\t%ld\n" (gethi d);
         (* Printf.fprintf oc "\t.long\t%ld\n" (getlo d) *))
       data);
  (* Printf.fprintf oc "\t.text\n";
  Printf.fprintf oc "\t.globl _min_caml_start\n";
  Printf.fprintf oc "\t.align 2\n"; *)
  Printf.fprintf oc "\tj\t_min_caml_start\n";
  (* ライブラリ関数〜*)
  (* min_caml_create_array *)
  Printf.fprintf oc "min_caml_create_array:\n";
  Printf.fprintf oc "\taddi\t$s0, $a0, 0\n";
  Printf.fprintf oc "\taddi\t$a0, $gp, 0\n";
  Printf.fprintf oc "create_array_loop:\n";
  Printf.fprintf oc "\tbne\t$s0, $zero, create_array_cont\n";
  Printf.fprintf oc "\tjr\t$ra\n";
  Printf.fprintf oc "create_array_cont:\n";
  Printf.fprintf oc "\tsw\t$a1, 0($gp)\n";
  Printf.fprintf oc "\taddi\t$s0, $s0, -1\n";
  Printf.fprintf oc "\taddi\t$gp, $gp, 4\n";
  Printf.fprintf oc "\tj\tcreate_array_loop\n";
  (* min_caml_create_float_array *)
  Printf.fprintf oc "min_caml_create_float_array:\n";
  Printf.fprintf oc "\taddi\t$s0, $a0, 0\n";
  Printf.fprintf oc "\taddi\t$a0, $gp, 0\n";
  Printf.fprintf oc "create_float_array_loop:\n";
  Printf.fprintf oc "\tbne\t$s0, $zero, create_float_array_cont\n";
  Printf.fprintf oc "\tjr\t$ra\n";
  Printf.fprintf oc "create_float_array_cont:\n";
  Printf.fprintf oc "\tswc1\t$f0, 0($gp)\n";
  Printf.fprintf oc "\taddi\t$s0, $s0, -1\n";
  Printf.fprintf oc "\taddi\t$gp, $gp, 4\n";
  Printf.fprintf oc "\tj\tcreate_float_array_loop\n";

  (* Printf.fprintf oc "kernel_sin:\n";
  (* Printf.fprintf oc "\tlui\t$s0, 15914\n";
	Printf.fprintf oc "\tori\t$s0, $s0, 43692\n";
  Printf.fprintf oc "\tmtc1\t$s0, $f1\n"; *)
  Printf.fprintf oc "\tflui\t$f1, 15914\n";
	Printf.fprintf oc "\tfori\t$f1, $f1, 43692\n";
	Printf.fprintf oc "\tmul.s\t$f1, $f1, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f1, $f1, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f1, $f1, $f0\n";
	Printf.fprintf oc "\tsub.s\t$f1, $f0, $f1\n";
	(* Printf.fprintf oc "\tlui\t$s0, 15368\n";
	Printf.fprintf oc "\tori\t$s0, $s0, 34406\n";
  Printf.fprintf oc "\tmtc1\t$s0, $f2\n"; *)
  Printf.fprintf oc "\tflui\t$f2, 15368\n";
	Printf.fprintf oc "\tfori\t$f2, $f2, 34406\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tadd.s\t$f1, $f1, $f2\n";
	(* Printf.fprintf oc "\tlui\t$s0, 14669\n";
	Printf.fprintf oc "\tori\t$s0, $s0, 25781\n";
  Printf.fprintf oc "\tmtc1\t$s0, $f2\n"; *)
  Printf.fprintf oc "\tflui\t$f2, 14669\n";
	Printf.fprintf oc "\tfori\t$f2, $f2, 25781\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f0, $f2, $f0\n";
	Printf.fprintf oc "\tsub.s\t$f0, $f1, $f0\n";
	Printf.fprintf oc "\tjr\t$ra\n";
  Printf.fprintf oc "kernel_cos:\n";
	(* Printf.fprintf oc "\tlui\t$s0, 16256\n";
	Printf.fprintf oc "\tori\t$s0, $s0, 0\n";
  Printf.fprintf oc "\tmtc1\t$s0, $f1\n"; *)
  Printf.fprintf oc "\tflui\t$f1, 16256\n";
	(* Printf.fprintf oc "\tlui\t$s0, 16128\n";
	Printf.fprintf oc "\tori\t$s0, $s0, 0\n";
  Printf.fprintf oc "\tmtc1\t$s0, $f2\n"; *)
  Printf.fprintf oc "\tflui\t$f2, 16128\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tsub.s\t$f1, $f1, $f2\n";
	(* Printf.fprintf oc "\tlui\t$s0, 15658\n";
	Printf.fprintf oc "\tori\t$s0, $s0, 42889\n";
  Printf.fprintf oc "\tmtc1\t$s0, $f2\n"; *)
  Printf.fprintf oc "\tflui\t$f2, 15658\n";
	Printf.fprintf oc "\tfori\t$f2, $f2, 42889\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tadd.s\t$f1, $f1, $f2\n";
	(* Printf.fprintf oc "\tlui\t$s0, 15027\n";
	Printf.fprintf oc "\tori\t$s0, $s0, 33023\n";
  Printf.fprintf oc "\tmtc1\t$s0, $f2\n"; *)
  Printf.fprintf oc "\tflui\t$f2, 15658\n";
	Printf.fprintf oc "\tfori\t$f2, $f2, 42889\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f2, $f2, $f0\n";
	Printf.fprintf oc "\tmul.s\t$f0, $f2, $f0\n";
	Printf.fprintf oc "\tsub.s\t$f0, $f1, $f0\n";
  Printf.fprintf oc "\tjr\t$ra\n";
  Printf.fprintf oc "minus_sin:\n";
	Printf.fprintf oc "\tsw\t$ra, 4($sp)\n";
	Printf.fprintf oc "\taddi\t$sp, $sp, 8\n";
	Printf.fprintf oc "\tsub.s\t$f0, $fzero, $f0\n";
	Printf.fprintf oc "\tlahi\t$ra, tmp.sin_148\n";
	Printf.fprintf oc "\tlalo\t$ra, tmp.sin_148\n";
  Printf.fprintf oc "min_caml_sin:\n";
  Printf.fprintf oc "\tc.lt.s\t$s0, $f0, $fzero\n";
	Printf.fprintf oc "\tbne\t$s0, $zero, minus_sin\n";
  (* Printf.fprintf oc "\tlui\t$s0, 16457\n";
	Printf.fprintf oc "\tori\t$s0, $s0, 4059\n";
  Printf.fprintf oc "\tmtc1\t$s0, $f1\n"; *)
  Printf.fprintf oc "\tflui\t$f1, 16457\n";
	Printf.fprintf oc "\tfori\t$f1, $f1, 4059\n";
	Printf.fprintf oc "\tc.lt.s	$s0, $f0, $f1\n";
	Printf.fprintf oc "\tbeq	$s0, $zero, bne_else.sin_145\n";
	(* Printf.fprintf oc "\tlui	$s0, 16329\n";
	Printf.fprintf oc "\tori	$s0, $s0, 4059\n";
  Printf.fprintf oc "\tmtc1	$s0, $f2\n"; *)
  Printf.fprintf oc "\tflui	$f2, 16329\n";
	Printf.fprintf oc "\tfori	$f2, $f2, 4059\n";
	Printf.fprintf oc "\tc.lt.s	$s0, $f0, $f2\n";
	Printf.fprintf oc "\tbeq	$s0, $zero, bne_else.sin_146\n";
	(* Printf.fprintf oc "\tlui	$s0, 16201\n";
	Printf.fprintf oc "\tori	$s0, $s0, 4059\n";
  Printf.fprintf oc "\tmtc1	$s0, $f1\n"; *)
  Printf.fprintf oc "\tflui	$f1, 16201\n";
	Printf.fprintf oc "\tfori	$f1, $f1, 4059\n";
	Printf.fprintf oc "\tc.lt.s	$s0, $f1, $f0\n";
	Printf.fprintf oc "\tbeq	$s0, $zero, bne_else.sin_147\n";
	(* Printf.fprintf oc "\tlui	$s0, 16329\n";
	Printf.fprintf oc "\tori	$s0, $s0, 4059\n";
  Printf.fprintf oc "\tmtc1	$s0, $f1\n"; *)
  Printf.fprintf oc "\tflui	$f1, 16329\n";
	Printf.fprintf oc "\tfori	$f1, $f1, 4059\n";
	Printf.fprintf oc "\tsub.s	$f0, $f1, $f0\n";
	Printf.fprintf oc "\tj	kernel_cos\n";
  Printf.fprintf oc "bne_else.sin_147:\n";
	Printf.fprintf oc "\tj	kernel_sin\n";
  Printf.fprintf oc "bne_else.sin_146:\n";
	Printf.fprintf oc "\tsub.s	$f0, $f1, $f0\n";
	Printf.fprintf oc "\tj\tmin_caml_sin\n";
  Printf.fprintf oc "\tbne_else.sin_145:\n";
	Printf.fprintf oc "\tsub.s	$f0, $f0, $f1\n";
	Printf.fprintf oc "\tsw	$ra, 4($sp)\n";
	Printf.fprintf oc "\taddi	$sp, $sp, 8\n";
	Printf.fprintf oc "\tlahi	$ra, tmp.sin_148\n";
	Printf.fprintf oc "\tlalo	$ra, tmp.sin_148\n";
	Printf.fprintf oc "\tj\tmin_caml_sin\n";
  Printf.fprintf oc "tmp.sin_148:\n";
	Printf.fprintf oc "\taddi	$sp, $sp, -8\n";
	Printf.fprintf oc "\tlw	$ra, 4($sp)\n";
	Printf.fprintf oc "\tsub.s	$f0, $fzero, $f0\n";
  Printf.fprintf oc "\tjr	$ra\n";
  Printf.fprintf oc "minus_cos:\n";
	Printf.fprintf oc "\tsw\t$ra, 4($sp)\n";
	Printf.fprintf oc "\taddi\t$sp, $sp, 8\n";
	Printf.fprintf oc "\tsub.s\t$f0, $fzero, $f0\n";
	Printf.fprintf oc "\tlahi\t$ra, tmp.cos_137\n";
	Printf.fprintf oc "\tlalo\t$ra, tmp.cos_137\n";
  Printf.fprintf oc "min_caml_cos:\n";
  Printf.fprintf oc "\tc.lt.s\t$s0, $f0, $fzero\n";
	Printf.fprintf oc "\tbne\t$s0, $zero, minus_cos\n";
  (* Printf.fprintf oc "\tlui\t$s0, 16457\n";
	Printf.fprintf oc "\tori\t$s0, $s0, 4059\n";
  Printf.fprintf oc "\tmtc1\t$s0, $f1\n"; *)
  Printf.fprintf oc "\tflui\t$f1, 16457\n";
	Printf.fprintf oc "\tfori\t$f1, $f1, 4059\n";
	Printf.fprintf oc "\tc.lt.s	$s0, $f0, $f1\n";
	Printf.fprintf oc "\tbeq	$s0, $zero, bne_else.cos_134\n";
	(* Printf.fprintf oc "\tlui	$s0, 16329\n";
	Printf.fprintf oc "\tori	$s0, $s0, 4059\n";
  Printf.fprintf oc "\tmtc1	$s0, $f2\n"; *)
  Printf.fprintf oc "\tflui	$f2, 16329\n";
	Printf.fprintf oc "\tfori	$f2, $f2, 4059\n";
	Printf.fprintf oc "\tc.lt.s	$s0, $f0, $f2\n";
	Printf.fprintf oc "\tbeq	$s0, $zero, bne_else.cos_135\n";
	(* Printf.fprintf oc "\tlui	$s0, 16201\n";
	Printf.fprintf oc "\tori	$s0, $s0, 4059\n";
  Printf.fprintf oc "\tmtc1	$s0, $f1\n"; *)
  Printf.fprintf oc "\tflui	$f1, 16201\n";
	Printf.fprintf oc "\tfori	$f1, $f1, 4059\n";
	Printf.fprintf oc "\tc.lt.s	$s0, $f1, $f0\n";
	Printf.fprintf oc "\tbeq	$s0, $zero, bne_else.cos_136\n";
	(* Printf.fprintf oc "\tlui	$s0, 16329\n";
	Printf.fprintf oc "\tori	$s0, $s0, 4059\n";
  Printf.fprintf oc "\tmtc1	$s0, $f1\n"; *)
  Printf.fprintf oc "\tflui	$f1, 16329\n";
	Printf.fprintf oc "\tfori	$f1, $f1, 4059\n";
	Printf.fprintf oc "\tsub.s	$f0, $f1, $f0\n";
	Printf.fprintf oc "\tj	kernel_sin\n";
  Printf.fprintf oc "bne_else.cos_136:\n";
	Printf.fprintf oc "\tj\tkernel_cos\n";
  Printf.fprintf oc "bne_else.cos_135:\n";
	Printf.fprintf oc "\tsub.s	$f0, $f1, $f0\n";
	Printf.fprintf oc "\tsw	$ra, 4($sp)\n";
	Printf.fprintf oc "\taddi	$sp, $sp, 8\n";
	Printf.fprintf oc "\tlahi	$ra, tmp.cos_137\n";
	Printf.fprintf oc "\tlalo	$ra, tmp.cos_137\n";
	Printf.fprintf oc "\tj\tmin_caml_cos\n";
  Printf.fprintf oc "tmp.cos_137:\n";
	Printf.fprintf oc "\taddi	$sp, $sp, -8\n";
	Printf.fprintf oc "\tlw	$ra, 4($sp)\n";
	Printf.fprintf oc "\tsub.s	$f0, $fzero, $f0\n";
	Printf.fprintf oc "\tjr	$ra\n";
  Printf.fprintf oc "bne_else.cos_134:\n";
	Printf.fprintf oc "\tsub.s	$f0, $f0, $f1\n";
	Printf.fprintf oc "\tsw	$ra, 4($sp)\n";
	Printf.fprintf oc "\taddi	$sp, $sp, 8\n";
	Printf.fprintf oc "\tlahi	$ra, tmp.cos_137\n";
	Printf.fprintf oc "\tlalo	$ra, tmp.cos_137\n";
	Printf.fprintf oc "\tj\tmin_caml_cos\n"; *)
(* Printf.fprintf oc
  "kernel_atan:
	(* lui	$s0, 16042
	ori	$s0, $s0, 43690
	mtc1	$s0, $f1 *)
	mul.s	$f1, $f1, $f0
	mul.s	$f1, $f1, $f0
	mul.s	$f1, $f1, $f0
	sub.s	$f1, $f0, $f1
	lui	$s0, 15948
	ori	$s0, $s0, 52429
	mtc1	$s0, $f2
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	add.s	$f1, $f1, $f2
	lui	$s0, 15890
	ori	$s0, $s0, 18725
	mtc1	$s0, $f2
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	sub.s	$f1, $f1, $f2
	lui	$s0, 15843
	ori	$s0, $s0, 36408
	mtc1	$s0, $f2
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	add.s	$f1, $f1, $f2
	lui	$s0, 15799
	ori	$s0, $s0, 54894
	mtc1	$s0, $f2
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	sub.s	$f1, $f1, $f2
	lui	$s0, 15733
	ori	$s0, $s0, 59331
	mtc1	$s0, $f2
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f1, $f0
	jr	$ra
min_caml_atan:
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else_atan.165
	sub.s	$f0, $fzero, $f0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_atan
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	sub.s	$f0, $fzero, $f0
	jr	$ra
bne_else_atan.165:
	lui	$s0, 16096
	ori	$s0, $s0, 0
	mtc1	$s0, $f1
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else_atan.166
	j	kernel_atan
bne_else_atan.166:
	lui	$s0, 16412
	ori	$s0, $s0, 0
	mtc1	$s0, $f1
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else_atan.167
	lui	$s0, 16201
	ori	$s0, $s0, 4059
	mtc1	$s0, $f1
	lui	$s0, 16256
	ori	$s0, $s0, 0
	mtc1	$s0, $f2
	sub.s	$f2, $f0, $f2
	lui	$s0, 16256
	ori	$s0, $s0, 0
	mtc1	$s0, $f3
	add.s	$f0, $f0, $f3
	div.s	$f0, $f2, $f0
	swc1	$f1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	kernel_atan
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lwc1	$f1, 0($sp)
	add.s	$f0, $f1, $f0
	jr	$ra
bne_else_atan.167:
	lui	$s0, 16329
	ori	$s0, $s0, 4059
	mtc1	$s0, $f1
	lui	$s0, 16256
	ori	$s0, $s0, 0
	mtc1	$s0, $f2
	div.s	$f0, $f2, $f0
	swc1	$f1, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	kernel_atan
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lwc1	$f1, 8($sp)
	sub.s	$f0, $f1, $f0
  jr	$ra\n"; *)
  (* Printf.fprintf oc
  "kernel_atan:
	flui	$f1, 16042
	fori	$f1, $f1, 43690
	mul.s	$f1, $f1, $f0
	mul.s	$f1, $f1, $f0
	mul.s	$f1, $f1, $f0
	sub.s	$f1, $f0, $f1
	flui	$f2, 15948
	fori	$f2, $f2, 52429
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	add.s	$f1, $f1, $f2
	flui	$f2, 15890
	fori	$f2, $f2, 18725
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	sub.s	$f1, $f1, $f2
	flui	$f2, 15843
	fori	$f2, $f2, 36408
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	add.s	$f1, $f1, $f2
	flui	$f2, 15799
	fori	$f2, $f2, 54894
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	sub.s	$f1, $f1, $f2
	flui	$f2, 15733
	fori	$f2, $f2, 59331
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f2, $f2, $f0
	mul.s	$f0, $f2, $f0
	add.s	$f0, $f1, $f0
	jr	$ra
min_caml_atan:
	c.lt.s	$s0, $f0, $fzero
	beq	$s0, $zero, bne_else_atan.165
	sub.s	$f0, $fzero, $f0
	sw	$ra, 4($sp)
	addi	$sp, $sp, 8
	jal	min_caml_atan
	addi	$sp, $sp, -8
	lw	$ra, 4($sp)
	sub.s	$f0, $fzero, $f0
	jr	$ra
bne_else_atan.165:
	flui	$f1, 16096
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else_atan.166
	j	kernel_atan
bne_else_atan.166:
	flui	$f1, 16412
	c.lt.s	$s0, $f0, $f1
	beq	$s0, $zero, bne_else_atan.167
	flui	$f1, 16201
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	sub.s	$f2, $f0, $f2
	flui	$f3, 16256
	add.s	$f0, $f0, $f3
	div.s	$f0, $f2, $f0
	swc1	$f1, 0($sp)
	sw	$ra, 12($sp)
	addi	$sp, $sp, 16
	jal	kernel_atan
	addi	$sp, $sp, -16
	lw	$ra, 12($sp)
	lwc1	$f1, 0($sp)
	add.s	$f0, $f1, $f0
	jr	$ra
bne_else_atan.167:
	flui	$f1, 16329
	fori	$f1, $f1, 4059
	flui	$f2, 16256
	div.s	$f0, $f2, $f0
	swc1	$f1, 8($sp)
	sw	$ra, 20($sp)
	addi	$sp, $sp, 24
	jal	kernel_atan
	addi	$sp, $sp, -24
	lw	$ra, 20($sp)
	lwc1	$f1, 8($sp)
	sub.s	$f0, $f1, $f0
	jr	$ra\n";
  (* abs_float *)
  Printf.fprintf oc "min_caml_fabs:\n";
  Printf.fprintf oc "\tc.lt.s\t$s0, $f0, $fzero\n";
  Printf.fprintf oc "\tbne\t$s0, $zero, minus\n";
  Printf.fprintf oc "\tjr\t$ra\n";
  Printf.fprintf oc "minus:\n";
  Printf.fprintf oc "\tsub.s\t$f0, $fzero, $f0\n";
  Printf.fprintf oc "\tjr\t$ra\n"; *)
  List.iter (fun fundef -> h oc fundef) fundefs;
  (* Printf.fprintf oc "_min_caml_start: # main entry point\n";
  Printf.fprintf oc "\tmflr\tr0\n";
  Printf.fprintf oc "\tstmw\tr30, -8(r1)\n";
  Printf.fprintf oc "\tstw\tr0, 8(r1)\n";
  Printf.fprintf oc "\tstwu\tr1, -96(r1)\n"; *)
  (* Printf.fprintf oc "#\tmain program starts: \n"; *)
  Printf.fprintf oc "_min_caml_start:\n";
  Printf.fprintf oc "\tlui\t$sp, 1\n";
  Printf.fprintf oc "\tlui\t$gp, 3\n";
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("$zero"), e);
  Printf.fprintf oc "last:\n";
  Printf.fprintf oc "\tj\tlast"
  (* Printf.fprintf oc "#\tmain program ends\n"; *)
  (* Printf.fprintf oc "\tmr\tr3, %s\n" regs.(0); *)
  (* Printf.fprintf oc "\tlwz\tr1, 0(r1)\n";
  Printf.fprintf oc "\tlwz\tr0, 8(r1)\n";
  Printf.fprintf oc "\tmtlr\tr0\n";
  Printf.fprintf oc "\tlmw\tr30, -8(r1)\n";
  Printf.fprintf oc "\tjr\t$ra\n" *)
