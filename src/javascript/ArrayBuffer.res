@ocaml.doc(
  "The `ArrayBuffer` object is used to represent a generic, fixed-length raw binary data buffer."
)
type t = Js_typed_array2.array_buffer

@ocaml.doc("Creates a new `ArrayBuffer` object.") @new external make: int => t = "ArrayBuffer"

@ocaml.doc(
  "The read-only size, in bytes, of the `ArrayBuffer`. This is established when the array is constructed and cannot be changed."
)
@get
external byteLength: t => int = "byteLength"

@ocaml.doc(
  "Returns a new `ArrayBuffer` whose contents are a copy of this `ArrayBuffer`'s bytes from `begin` (inclusive) up to `end` (exclusive). If either begin or end is negative, it refers to an index from the end of the array, as opposed to from the beginning."
)
@send
external slice: (t, ~start: int, ~end: int) => t = "slice"

@ocaml.doc(
  "Returns a new `ArrayBuffer` whose contents are a copy of this `ArrayBuffer`'s bytes from `begin` (inclusive) up to `end` (exclusive). If either begin or end is negative, it refers to an index from the end of the array, as opposed to from the beginning."
)
@send
@send
external sliceToEnd: (t, int) => t = "slice"

@scope("ArrayBuffer") @val external isView: 'any => bool = "isView"
