type t = bool

@ocaml.doc("Creates a new Boolean object.") @new external make: bool => t = "Boolean"
@ocaml.doc("Creates a new Boolean object from any value.") @new
external makeAny: 'any => t = "Boolean"

@ocaml.doc(
  "Returns a string of either `'true'` or `'false'` depending upon the value of the object. "
)
@send
external toString: (t, unit) => string = "toString"

@ocaml.doc("Returns the primitive value of the `Boolean` object.") @send
external valueOf: (t, unit) => t = "valueOf"
