include TypedArray.Impl({
  type childT = float

  @ocaml.doc(
    "The `Float64Array` typed array represents an array of 64-bit floating point numbers (corresponding to the C double data type) in the platform byte order. If control over byte order is needed, use `DataView` instead."
  )
  type t = TypedArray.t<childT>
})

//

@new
external make: unit => t = "Float64Array"

@new
external makeWithLength: int => t = "Float64Array"

@new
external fromArrayBuffer: (ArrayBuffer.t, ~offset: int, ~length: int) => t = "Float64Array"

// Static properties

@ocaml.doc("Returns a number value of the element size. `8` in the case of an `Float64Array`.")
@scope("Float64Array")
@val
external _BYTES_PER_ELEMENT: int = "BYTES_PER_ELEMENT"

@ocaml.doc(
  "Returns the string value of the constructor name. In the case of the `Float64Array` type: \"Float64Array\""
)
@scope("Float64Array")
@val
external name: string = "name"

// Static methods

@scope("Float64Array") @val
external of_: t => t = "of"

@scope("Float64Array") @val
external fromArrayLike: ArrayLike.t<'a> => t = "from"

@scope("Float64Array") @val
external fromArrayLikeWithMap: (ArrayLike.t<'a>, 'a => childT) => t = "from"

@scope("Float64Array") @val
external fromObject: {..} => t = "from"

@scope("Float64Array") @val
external fromObjectWithMap: ({..}, 'a => childT) => t = "from"

@scope("Float64Array") @val
external fromString: string => t = "from"

@scope("Float64Array") @val
external fromStringWithMap: (string, string => childT) => t = "from"
