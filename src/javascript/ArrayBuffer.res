type t

@new external make: int => t = "ArrayBuffer"

@get external byteLength: t => int = "byteLength"

@send external slice: (t, int, int) => t = "slice"
@send external sliceToEnd: (t, int) => t = "slice"

@send external isView: (t, 'any) => bool = "isView"