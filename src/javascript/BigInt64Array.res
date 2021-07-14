include TypedArray.Impl({
  type childT = BigInt.t

  @ocaml.doc(
    "The `BigInt64Array` typed array represents an array of 64-bit signed integers in the platform byte order. If control over byte order is needed, use `DataView` instead."
  )
  type t = TypedArray.t<childT>
})

//

@new
external make: unit => t = "BigInt64Array"

@new
external makeWithLength: int => t = "BigInt64Array"

@new
external fromArrayBuffer: (ArrayBuffer.t, ~offset: int, ~length: int) => t = "BigInt64Array"

// Static properties

@ocaml.doc("Returns a number value of the element size. `8` in the case of an `BigInt64Array`.")
@scope("BigInt64Array")
@val
external _BYTES_PER_ELEMENT: int = "BYTES_PER_ELEMENT"

@ocaml.doc(
  "Returns the string value of the constructor name. In the case of the `BigInt64Array` type: \"BigInt64Array\""
)
@scope("BigInt64Array")
@val
external name: string = "name"

// Static methods

@scope("BigInt64Array") @val
external of_: t => t = "of"

@scope("BigInt64Array") @val
external fromArrayLike: ArrayLike.t<'a> => t = "from"

@scope("BigInt64Array") @val
external fromArrayLikeWithMap: (ArrayLike.t<'a>, 'a => childT) => t = "from"

@scope("BigInt64Array") @val
external fromObject: {..} => t = "from"

@scope("BigInt64Array") @val
external fromObjectWithMap: ({..}, 'a => childT) => t = "from"

@scope("BigInt64Array") @val
external fromString: string => t = "from"

@scope("BigInt64Array") @val
external fromStringWithMap: (string, string => childT) => t = "from"
