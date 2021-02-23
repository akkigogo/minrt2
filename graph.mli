val complete : Id.t list -> (Id.t * Id.t) list
val add : (Id.t * Id.t) list -> (Id.t * Id.t) list -> (Id.t * Id.t) list
val alloc : Id.t list -> Id.t list -> (Id.t * Id.t) list -> (Id.t * Id.t) list
val alloc_priority : Id.t list -> Id.t list -> (Id.t * Id.t) list -> (Id.t * Id.t) list -> (Id.t * Id.t) list
val print_graph : (Id.t * Id.t) list -> unit