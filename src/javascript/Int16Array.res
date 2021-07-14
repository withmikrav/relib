include TypedArray.Impl({
  @ocaml.doc(
    "The `Int16Array` typed array represents an array of twos-complement 16-bit signed integers in the platform byte order. If control over byte order is needed, use DataView instead. The contents are initialized to 0."
  )
  type t = TypedArray.t<int>

  type childT = int
})

//

@new
external make: unit => t = "Int16Array"

@new
external makeWithLength: int => t = "Int16Array"

@new
external fromArrayBuffer: (ArrayBuffer.t, ~offset: int, ~length: int) => t = "Int16Array"

// Static properties

@ocaml.doc("Returns a number value of the element size. `2` in the case of an `Int16Array`.")
@scope("Int16Array")
@val
external _BYTES_PER_ELEMENT: int = "BYTES_PER_ELEMENT"

@ocaml.doc(
  "Returns the string value of the constructor name. In the case of the `Int16Array` type: \"Int16Array\""
)
@scope("Int16Array")
@val
external name: string = "name"

// Static methods

@scope("Int16Array") @val
external of_: t => t = "of"

@scope("Int16Array") @val
external fromArrayLike: ArrayLike.t<'a> => t = "from"

@scope("Int16Array") @val
external fromArrayLikeWithMap: (ArrayLike.t<'a>, 'a => childT) => t = "from"

@scope("Int16Array") @val
external fromObject: {..} => t = "from"

@scope("Int16Array") @val
external fromObjectWithMap: ({..}, 'a => childT) => t = "from"

@scope("Int16Array") @val
external fromString: string => t = "from"

@scope("Int16Array") @val
external fromStringWithMap: (string, string => childT) => t = "from"
