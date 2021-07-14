// The Int32Array() typed array constructor creates an array of twos-complement 32-bit signed integers in the platform byte order. If control over byte order is needed, use DataView instead. The contents are initialized to 0.

include TypedArray.Impl({
  @ocaml.doc(
    "The Int32Array() typed array constructor creates an array of twos-complement 32-bit signed integers in the platform byte order. If control over byte order is needed, use DataView instead. The contents are initialized to 0."
  )
  type t = TypedArray.t<int>

  type childT = int
})

//

@new
external make: unit => t = "Int32Array"

@new
external makeWithLength: int => t = "Int32Array"

@new
external fromArrayBuffer: (ArrayBuffer.t, ~offset: int, ~length: int) => t = "Int32Array"

// Static properties

@ocaml.doc("Returns a number value of the element size. `2` in the case of an `Int32Array`.")
@scope("Int32Array")
@val
external _BYTES_PER_ELEMENT: int = "BYTES_PER_ELEMENT"

@ocaml.doc(
  "Returns the string value of the constructor name. In the case of the `Int32Array` type: \"Int32Array\""
)
@scope("Int32Array")
@val
external name: string = "name"

// Static methods

@scope("Int32Array") @val
external of_: t => t = "of"

@scope("Int32Array") @val
external fromArray: array<childT> => t = "from"

@scope("Int32Array") @val
external fromArrayWithMap: (array<'a>, 'a => childT) => t = "from"

@scope("Int32Array") @val
external fromObject: {..} => t = "from"

@scope("Int32Array") @val
external fromObjectWithMap: ({..}, 'a => childT) => t = "from"

@scope("Int32Array") @val
external fromString: string => t = "from"

@scope("Int32Array") @val
external fromStringWithMap: (string, string => childT) => t = "from"

@scope("Int32Array") @val
external fromMap: Map.t<'key, childT> => t = "from"

@scope("Int32Array") @val
external fromMapWithMap: (Map.t<'key, 'value>, (('key, 'value)) => childT) => t = "from"

@scope("Int32Array") @val
external fromSet: Set.t<childT> => t = "from"

@scope("Int32Array") @val
external fromSetWithMap: (Set.t<'a>, 'a => childT) => t = "from"

@scope("Int32Array") @val
external fromTypedArray: TypedArray.t<'a> => t = "from"

@scope("Int32Array") @val
external fromTypedArrayWithMap: (TypedArray.t<'a>, 'a => childT) => t = "from"
