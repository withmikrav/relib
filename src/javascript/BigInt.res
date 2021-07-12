@ocaml.doc(
  "`BigInt` is a built-in object whose constructor returns a `bigint` primitive to represent whole numbers larger than `2^53 - 1`"
)
type t

@ocaml.doc("Creates a new BigInt value from `int`") @val
external fromInt: int => t = "BigInt"

@ocaml.doc("Creates a new BigInt value from `string`") @val
external unsafe_fromString: string => t = "BigInt"

@ocaml.doc("Creates a new BigInt value from `int`")
let make = fromInt

// Static methods

@ocaml.doc("Clamps a BigInt value to a signed integer value, and returns that value.")
@scope("BigInt")
@val
external asIntN: (int, t) => t = "asIntN"

@ocaml.doc("Clamps a BigInt value to an unsigned integer value, and returns that value.")
@scope("BigInt")
@val
external asUintN: (int, t) => t = "asUintN"

// Instance methods

@ocaml.doc("Returns a string with a language sensitive representation of this number.") @send
external toLocaleString: (t, unit) => string = "toLocaleString"

@ocaml.doc("Returns a string with a language sensitive representation of this number.") @send
external toLocaleStringWithLocales: (t, ~locales: string) => string = "toLocaleString"

@ocaml.doc("Returns a string with a language sensitive representation of this number.") @send
external toLocaleStringWithOptions: (
  t,
  ~locales: string,
  ~options: Intl.NumberFormat.optionsT,
) => string = "toLocaleString"

@ocaml.doc(
  "Returns a string representing the number to a specified precision in fixed-point or exponential notation."
)
@send
external toPrecision: (t, ~digits: int) => string = "toPrecision"

@ocaml.doc("Returns a string representing the specified number") @send
external toString: t => string = "toString"

@ocaml.doc("Returns a string representing the specified number in the specified radix (\"base\").")
@send
external toStringWithRadix: (t, ~radix: int) => string = "toString"

@ocaml.doc("Returns the primitive value of the specified object") @send
external valueOf: t => t = "valueOf"
