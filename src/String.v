(** * Interface with the OCaml strings. *)
Require Import ExtrOcamlBasic.
Require Import ExtrOcamlString.
Require Import ListString.All.

(** The OCaml `string` type. *)
Parameter t : Type.
Extract Constant t => "string".

(** Export to an OCaml string. *)
Parameter of_lstring : LString.t -> t.
Extract Constant of_lstring => "ExtractionString.of_lstring".

(** Import an OCaml string. *)
Parameter to_lstring : t -> LString.t.
Extract Constant to_lstring => "ExtractionString.to_lstring".
