include TypedArray.Impl({
  @ocaml.doc("The Uint8ClampedArray typed array represents an array of 8-bit unsigned integers clamped to 0-255;.
    
if you specified a value that is out of the range of [0,255], 0 or 255 will be set instead; if you specify a non-integer, the nearest integer will be set.")
  type t = TypedArray.t<int>

  type childT = int
})

//

@new
external make: unit => t = "Uint8ClampedArray"

@new
external makeWithLength: int => t = "Uint8ClampedArray"

@new
external fromArrayBuffer: (ArrayBuffer.t, ~offset: int, ~length: int) => t = "Uint8ClampedArray"

// Static properties

@ocaml.doc("Returns a number value of the element size. `1` in the case of an `Uint8ClampedArray`.")
@scope("Uint8ClampedArray")
@val
external _BYTES_PER_ELEMENT: int = "BYTES_PER_ELEMENT"

@ocaml.doc(
  "Returns the string value of the constructor name. In the case of the `Uint8ClampedArray` type: \"Uint8ClampedArray\""
)
@scope("Uint8ClampedArray")
@val
external name: string = "name"

// Static methods

@scope("Uint8ClampedArray") @val
external of_: t => t = "of"

@scope("Uint8ClampedArray") @val
external fromArrayLike: ArrayLike.t<'a> => t = "from"

@scope("Uint8ClampedArray") @val
external fromArrayLikeWithMap: (ArrayLike.t<'a>, 'a => childT) => t = "from"

@scope("Uint8ClampedArray") @val
external fromObject: {..} => t = "from"

@scope("Uint8ClampedArray") @val
external fromObjectWithMap: ({..}, 'a => childT) => t = "from"

@scope("Uint8ClampedArray") @val
external fromString: string => t = "from"

@scope("Uint8ClampedArray") @val
external fromStringWithMap: (string, string => childT) => t = "from"
