include TypedArray.Impl({
  type childT = float

  @ocaml.doc(
    "The `Float32Array` typed array represents an array of 32-bit floating point numbers (corresponding to the C float data type) in the platform byte order. If control over byte order is needed, use `DataView` instead. The contents are initialized to 0."
  )
  type t = TypedArray.t<childT>
})

//

@new
external make: unit => t = "Float32Array"

@new
external makeWithLength: int => t = "Float32Array"

@new
external fromArrayBuffer: (ArrayBuffer.t, ~offset: int, ~length: int) => t = "Float32Array"

// Static properties

@ocaml.doc("Returns a number value of the element size. `4` in the case of an `Float32Array`.")
@scope("Float32Array")
@val
external _BYTES_PER_ELEMENT: int = "BYTES_PER_ELEMENT"

@ocaml.doc(
  "Returns the string value of the constructor name. In the case of the `Float32Array` type: \"Float32Array\""
)
@scope("Float32Array")
@val
external name: string = "name"

// Static methods

@scope("Float32Array") @val
external of_: t => t = "of"

@scope("Float32Array") @val
external fromArrayLike: ArrayLike.t<'a> => t = "from"

@scope("Float32Array") @val
external fromArrayLikeWithMap: (ArrayLike.t<'a>, 'a => childT) => t = "from"

@scope("Float32Array") @val
external fromObject: {..} => t = "from"

@scope("Float32Array") @val
external fromObjectWithMap: ({..}, 'a => childT) => t = "from"

@scope("Float32Array") @val
external fromString: string => t = "from"

@scope("Float32Array") @val
external fromStringWithMap: (string, string => childT) => t = "from"
