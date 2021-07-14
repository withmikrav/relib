include TypedArray.Impl({
  type childT = int

  @ocaml.doc(
    "The Uint32Array typed array represents an array of 32-bit unsigned integers in the platform byte order. If control over byte order is needed, use `DataView` instead."
  )
  type t = TypedArray.t<childT>
})

@new
external make: unit => t = "Uint32Array"

@new
external makeWithLength: int => t = "Uint32Array"

@new
external fromArrayBuffer: (ArrayBuffer.t, ~offset: int, ~length: int) => t = "Uint32Array"

// Static properties

@ocaml.doc("Returns a number value of the element size. `2` in the case of an `Uint32Array`.")
@scope("Uint32Array")
@val
external _BYTES_PER_ELEMENT: int = "BYTES_PER_ELEMENT"

@ocaml.doc(
  "Returns the string value of the constructor name. In the case of the `Uint32Array` type: \"Uint32Array\""
)
@scope("Uint32Array")
@val
external name: string = "name"

// Static methods

@scope("Uint32Array") @val
external of_: t => t = "of"

@scope("Uint32Array") @val
external fromArrayLike: ArrayLike.t<'a> => t = "from"

@scope("Uint32Array") @val
external fromArrayLikeWithMap: (ArrayLike.t<'a>, 'a => childT) => t = "from"

@scope("Uint32Array") @val
external fromObject: {..} => t = "from"

@scope("Uint32Array") @val
external fromObjectWithMap: ({..}, 'a => childT) => t = "from"

@scope("Uint32Array") @val
external fromString: string => t = "from"

@scope("Uint32Array") @val
external fromStringWithMap: (string, string => childT) => t = "from"
