include TypedArray.Impl({
  type childT = int

  @ocaml.doc(
    "The `Uint8Array` typed array represents an array of twos-complement 8-bit unsigned integers. The contents are initialized to 0."
  )
  type t = TypedArray.t<childT>
})

//

@new
external make: unit => t = "Unt8Array"

@new
external makeWithLength: int => t = "Unt8Array"

@new
external fromArrayBuffer: (ArrayBuffer.t, ~offset: int, ~length: int) => t = "Unt8Array"

// Static properties

@ocaml.doc("Returns a number value of the element size. `1` in the case of an `Uint8Array`.")
@scope("Uint8Array")
@val
external _BYTES_PER_ELEMENT: int = "BYTES_PER_ELEMENT"

@ocaml.doc(
  "Returns the string value of the constructor name. In the case of the `Uint8Array` type: \"Uint8Array\""
)
@scope("Uint8Array")
@val
external name: string = "name"

// Static methods

@scope("Uint8Array") @val
external of_: t => t = "of"

@scope("Uint8Array") @val
external fromArrayLike: ArrayLike.t<'a> => t = "from"

@scope("Uint8Array") @val
external fromArrayLikeWithMap: (ArrayLike.t<'a>, 'a => childT) => t = "from"

@scope("Uint8Array") @val
external fromObject: {..} => t = "from"

@scope("Uint8Array") @val
external fromObjectWithMap: ({..}, 'a => childT) => t = "from"

@scope("Uint8Array") @val
external fromString: string => t = "from"

@scope("Uint8Array") @val
external fromStringWithMap: (string, string => childT) => t = "from"
