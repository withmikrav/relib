type t

@new external make: int => t = "SharedArrayBuffer"

@get external byteLength: t => int = "byteLength"

@send external slice: (t, ~start: int, ~end: int) => t = "slice"
@send external sliceToEnd: (t, int) => t = "slice"
