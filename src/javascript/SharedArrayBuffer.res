@ocaml.doc(
  "The `SharedArrayBuffer` object is used to represent a generic, fixed-length raw binary data buffer, similar to the `ArrayBuffer` object, but in a way that they can be used to create views on shared memory. Unlike an `ArrayBuffer`, a `SharedArrayBuffer` cannot become detached."
)
type t = Js.TypedArray2.array_buffer

@new external make: int => t = "SharedArrayBuffer"

@ocaml.doc(
  "The size, in bytes, of the array. This is established when the array is constructed and cannot be changed."
)
@get
external byteLength: t => int = "byteLength"

@ocaml.doc(
  "Returns a new `SharedArrayBuffer` whose contents are a copy of this `SharedArrayBuffer`'s bytes from begin, inclusive, up to end, exclusive. If either begin or end is negative, it refers to an index from the end of the array, as opposed to from the beginning."
)
@send
external slice: (t, ~start: int, ~end: int) => t = "slice"

@ocaml.doc(
  "Returns a new `SharedArrayBuffer` whose contents are a copy of this `SharedArrayBuffer`'s bytes from begin, inclusive, up to end, exclusive. If either begin or end is negative, it refers to an index from the end of the array, as opposed to from the beginning."
)
@send
external sliceToEnd: (t, int) => t = "slice"
