open Asm

(* type id_or_imm = V of Id.t | C of int
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
  | Nop
  | Li of int
  | FLi of (* Id.t *) float
  | SetL of Id.l
  | Mr of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Slw of Id.t * id_or_imm
  | Slr of Id.t * id_or_imm
  | Lwz of Id.t * id_or_imm
  | Lwc of int
  | Stw of Id.t * Id.t * id_or_imm
  | Swc of Id.t * int
  | FMr of Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | Lfd of Id.t * id_or_imm
  | Stfd of Id.t * Id.t * id_or_imm
  | Lwfc of int
  | Swfc of Id.t * int
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLT of Id.t * id_or_imm * t * t
  | IfFEq of Id.t * Id.t * t * t
  | IfFLT of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 (caml2html: sparcasm_save) *)
  | Restore of Id.t (* スタック変数から値を復元 (caml2html: sparcasm_restore) *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式　(caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * float) list * fundef list * t * (Type.t * int) M.t *)

let rec pow x y = 
  if y = 0 then 1 else x * (pow x (y - 1))

let rec g env env2 = function
  | Ans(exp) -> g' env env2 exp
  | Let((x, t), Li(i), e) when -32768 <= i && i < 32768 ->
      let e' = g (M.add x i env) env2 e in
      if List.mem x (fv e') then Let((x, t), Li(i), e') else e'
  | Let((x, t), FLi(f), e) ->
      let e' = g env (M.add x f env2) e in
      if List.mem x (fv e') then Let((x, t), FLi(f), e') else e'
  | Let(xt, Slw(y, C(i)), e) when M.mem y env -> 
      g env env2 (Let(xt, Li((M.find y env) lsl i), e))
  | Let(xt, exp, e) -> Let(xt, g2 env env2 exp, g env env2 e)
and g' env env2 = function
  | Mr(x) when M.mem x env -> Ans(Li(M.find x env))
  | Add(x, V(y)) when M.mem x env && M.mem y env -> Ans(Li((M.find x env) + (M.find y env)))
  | Add(x, V(y)) when M.mem x env -> Ans(Add(y, C(M.find x env)))
  | Add(x, C(i)) when M.mem x env -> Ans(Li((M.find x env) + i))
  | FMr(x) when M.mem x env2 -> Ans(FLi(M.find x env2))
  | FNeg(x) when M.mem x env2 -> Ans(FLi(-.M.find x env2))
  | FAdd(x, y) when M.mem x env2 && M.mem y env2 -> Ans(FLi((M.find x env2) +. (M.find y env2)))
  | FSub(x, y) when M.mem x env2 && M.mem y env2 -> Ans(FLi((M.find x env2) -. (M.find y env2)))
  | FSub(x, y) when M.mem x env2 && M.find x env2 = 0. -> Ans(FNeg(y))
  | FMul(x, y) when M.mem x env2 && M.mem y env2 -> Ans(FLi((M.find x env2) *. (M.find y env2)))
  | FDiv(x, y) when M.mem x env2 && M.mem y env2 -> Ans(FLi((M.find x env2) /. (M.find y env2)))
  | FDiv(x, y) when M.mem x env2 && M.find x env2 = 0. -> Ans(FLi(0.))
  | Sub(x, V(y)) when M.mem x env && M.mem y env -> Ans(Li((M.find x env) - (M.find y env)))
  | Sub(x, V(y)) when M.mem y env -> Ans(Sub(x, C(M.find y env)))
  | Sub(x, C(i)) when M.mem x env -> Ans(Li((M.find x env) - i))
  | Slw(x, V(y)) when M.mem x env && M.mem y env -> Ans(Li(((M.find x env) * (pow 2 (M.find y env)))))
  | Slw(x, C(i)) when M.mem x env -> Ans(Li(((M.find x env) * pow 2 i)))
  | Lwz(x, V(y)) when M.mem x env && M.mem y env -> Ans(Lwc((M.find x env) + (M.find y env)))
  | Lwz(x, C(i)) when M.mem x env -> Ans(Lwc((M.find x env) + i))
  | Stw(x, y, V(z)) when M.mem y env && M.mem z env -> Ans(Swc(x, (M.find y env) + (M.find z env)))
  | Stw(x, y, C(i)) when (M.mem y env) -> Ans(Swc(x, (M.find y env) + i))
  | Lfd(x, V(y)) when M.mem x env && M.mem y env -> Ans(Lwfc((M.find y env) + (M.find y env)))
  | Lfd(x, C(i)) when M.mem x env -> Ans(Lwfc((M.find x env) + i))
  | Stfd(x, y, V(z)) when M.mem y env && M.mem z env -> Ans(Swfc(x, (M.find y env) + (M.find z env)))
  | Stfd(x, y, C(i)) when (M.mem y env) -> Ans(Swfc(x, (M.find y env) + i))
  | Stfd(x, y, C(i)) when M.mem x env2 && M.find x env2 = 0. -> Ans(Stfdz(y, C(i)))
  | Stfd(x, y, V(z)) when M.mem x env2 && M.find x env2 = 0. -> Ans(Stfdz(y, V(z)))
  | Swfc(x, i) when M.mem x env2 && M.find x env2 = 0. -> Ans(Swfcz(i))
  | IfEq(x, V(y), e1, e2) when M.mem x env && M.mem y env -> if M.find x env = M.find y env then g env env2 e1 else g env env2 e2
  | IfEq(x, C(i), e1, e2) when M.mem x env -> if M.find x env = i then g env env2 e1 else g env env2 e2
  | IfLT(x, V(y), e1, e2) when M.mem x env && M.mem y env -> if M.find x env < M.find y env then g env env2 e1 else g env env2 e2
  | IfLT(x, C(i), e1, e2) when M.mem x env -> if M.find x env < i then g env env2 e1 else g env env2 e2
  | IfFEq(x, y, e1, e2) when M.mem x env2 && M.mem y env2 -> if M.find x env2 = M.find y env2 then g env env2 e1 else g env env2 e2
  | IfFLT(x, y, e1, e2) when M.mem x env2 && M.mem y env2 -> if M.find x env2 < M.find y env2 then g env env2 e1 else g env env2 e2
  | IfFEq(x, y, e1, e2) when M.mem y env2 && M.find y env2 = 0. -> Ans(IfFEqz(x, g env env2 e1, g env env2 e2))
  | IfFLT(x, y, e1, e2) when M.mem y env2 && M.find y env2 = 0. -> Ans(IfFLTz(x, g env env2 e1, g env env2 e2))
  | IfFLT(x, y, e1, e2) when M.mem x env2 && M.find x env2 = 0. -> Ans(IfFGTz(y, g env env2 e1, g env env2 e2))
  | IfEq(x, y', e1, e2) -> Ans(IfEq(x, y', g env env2 e1, g env env2 e2))
  | IfLT(x, y', e1, e2) -> Ans(IfLT(x, y', g env env2 e1, g env env2 e2)) 
  | IfFEq(x, y, e1, e2) -> Ans(IfFEq(x, y, g env env2 e1, g env env2 e2))
  | IfFLT(x, y, e1, e2) -> Ans(IfFLT(x, y, g env env2 e1, g env env2 e2))
  | e -> Ans(e)
and g2 env env2 = function
  | Mr(x) when M.mem x env -> (Li(M.find x env))
  | Add(x, V(y)) when M.mem x env && M.mem y env -> (Li((M.find x env) + (M.find y env)))
  | Add(x, V(y)) when M.mem x env -> (Add(y, C(M.find x env)))
  | Add(x, C(i)) when M.mem x env -> (Li((M.find x env) + i))
  | FMr(x) when M.mem x env2 -> (FLi(M.find x env2))
  | FNeg(x) when M.mem x env2 -> (FLi(-.M.find x env2))
  | FAdd(x, y) when M.mem x env2 && M.mem y env2 -> (FLi((M.find x env2) +. (M.find y env2)))
  | FSub(x, y) when M.mem x env2 && M.mem y env2 -> (FLi((M.find x env2) -. (M.find y env2)))
  | FSub(x, y) when M.mem x env2 && M.find x env2 = 0. -> (FNeg(y))
  | FMul(x, y) when M.mem x env2 && M.mem y env2 -> (FLi((M.find x env2) *. (M.find y env2)))
  | FDiv(x, y) when M.mem x env2 && M.mem y env2 -> (FLi((M.find x env2) /. (M.find y env2)))
  | FDiv(x, y) when M.mem x env2 && M.find x env2 = 0. -> (FLi(0.))
  | Sub(x, V(y)) when M.mem x env && M.mem y env -> (Li((M.find x env) - (M.find y env)))
  | Sub(x, V(y)) when M.mem y env -> (Sub(x, C(M.find y env)))
  | Sub(x, C(i)) when M.mem x env -> (Li((M.find x env) - i))
  | Slw(x, V(y)) when M.mem x env && M.mem y env -> (Li(((M.find x env) * (pow 2 (M.find y env)))))
  | Slw(x, C(i)) when M.mem x env -> (Li(((M.find x env) * pow 2 i)))
  | Lwz(x, V(y)) when M.mem x env && M.mem y env -> (Lwc((M.find x env) + (M.find y env)))
  | Lwz(x, C(i)) when M.mem x env -> (Lwc((M.find x env) + i))
  | Stw(x, y, V(z)) when M.mem y env && M.mem z env -> (Swc(x, (M.find y env) + (M.find z env)))
  | Stw(x, y, C(i)) when (M.mem y env) -> (Swc(x, (M.find y env) + i))
  | Lfd(x, V(y)) when M.mem x env && M.mem y env -> (Lwfc((M.find y env) + (M.find y env)))
  | Lfd(x, C(i)) when M.mem x env -> (Lwfc((M.find x env) + i))
  | Stfd(x, y, V(z)) when M.mem y env && M.mem z env -> (Swfc(x, (M.find y env) + (M.find z env)))
  | Stfd(x, y, C(i)) when (M.mem y env) -> (Swfc(x, (M.find y env) + i))
  | Stfd(x, y, V(z)) when M.mem x env2 && M.find x env2 = 0. -> (Stfdz(y, V(z)))
  | Stfd(x, y, C(i)) when M.mem x env2 && M.find x env2 = 0. -> (Stfdz(y, C(i)))
  | Swfc(x, i) when M.mem x env2 && M.find x env2 = 0. -> (Swfcz(i))
  | IfFEq(x, y, e1, e2) when M.mem y env2 && M.find y env2 = 0. -> (IfFEqz(x, g env env2 e1, g env env2 e2))
  | IfFLT(x, y, e1, e2) when M.mem y env2 && M.find y env2 = 0. -> (IfFLTz(x, g env env2 e1, g env env2 e2))
  | IfFLT(x, y, e1, e2) when M.mem x env2 && M.find x env2 = 0. -> (IfFGTz(y, g env env2 e1, g env env2 e2))
  | IfEq(x, y', e1, e2) -> (IfEq(x, y', g env env2 e1, g env env2 e2))
  | IfLT(x, y', e1, e2) -> (IfLT(x, y', g env env2 e1, g env env2 e2)) 
  | IfFEq(x, y, e1, e2) -> (IfFEq(x, y, g env env2 e1, g env env2 e2))
  | IfFLT(x, y, e1, e2) -> (IfFLT(x, y, g env env2 e1, g env env2 e2))
  | e -> (e)

let h { name = l; args = xs; fargs = ys; body = e; ret = t } =
  { name = l; args = xs; fargs = ys; body = g M.empty M.empty e; ret = t }

let f (Prog(data, fundefs, e, _)) = 
  Prog(data, List.map h fundefs, g M.empty M.empty e, M.empty)