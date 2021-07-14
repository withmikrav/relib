include TypedArray.Impl({
  @ocaml.doc(
    "The `Int8Array` typed array represents an array of twos-complement 8-bit signed integers. The contents are initialized to 0."
  )
  type t = Js.TypedArray2.Int8Array.t

  type childT = int
})

// Static properties

@ocaml.doc("Returns a number value of the element size. `1` in the case of an `Int8Array`.")
@scope("Int8Array")
@val
external _BYTES_PER_ELEMENT: int = "BYTES_PER_ELEMENT"

@ocaml.doc(
  "Returns the string value of the constructor name. In the case of the `Int8Array` type: \"Int8Array\""
)
@scope("Int8Array")
@val
external name: string = "name"

// Static methods

@scope("Int8Array") @val
external of_: t => t = "of"

@scope("Int8Array") @val
external fromArray: array<childT> => t = "from"

@scope("Int8Array") @val
external fromArrayWithMap: (array<'a>, 'a => childT) => t = "from"

@scope("Int8Array") @val
external fromObject: {..} => t = "from"

@scope("Int8Array") @val
external fromObjectWithMap: ({..}, 'a => childT) => t = "from"

@scope("Int8Array") @val
external fromString: string => t = "from"

@scope("Int8Array") @val
external fromStringWithMap: (string, string => childT) => t = "from"

@scope("Int8Array") @val
external fromMap: Map.t<'key, childT> => t = "from"

@scope("Int8Array") @val
external fromMapWithMap: (Map.t<'key, 'value>, (('key, 'value)) => childT) => t = "from"

@scope("Int8Array") @val
external fromSet: Set.t<childT> => t = "from"

@scope("Int8Array") @val
external fromSetWithMap: (Set.t<'a>, 'a => childT) => t = "from"
