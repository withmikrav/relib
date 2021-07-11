// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number

@ocaml.doc("Number can be int or float")
type t = float

@new external fromInt: int => t = "Number"
@new external fromFloat: float => t = "Number"

external unsafe_toInt: t => int = "%identity"
external unsafe_toFloat: t => float = "%identity"

// Static properties

@ocaml.doc("The smallest interval between two representable numbers.") @scope("Number") @val
external _EPSILON: t = "EPSILON"

@ocaml.doc("The maximum safe integer in JavaScript `(2^53 - 1)`.") @scope("Number") @val
external _MAX_SAFE_INTEGER: t = "MAX_SAFE_INTEGER"

@ocaml.doc("The largest positive representable number.") @scope("Number") @val
external _MAX_VALUE: t = "MAX_VALUE"

@ocaml.doc("The minimum safe integer in JavaScript `(-(2^53 - 1))`.") @scope("Number") @val
external _MIN_SAFE_INTEGER: t = "MIN_SAFE_INTEGER"

@ocaml.doc(
  "The smallest positive representable number—that is, the positive number closest to zero (without actually being zero)."
)
@scope("Number")
@val
external _MIN_VALUE: t = "MIN_VALUE"

@ocaml.doc("Special \"Not a Number\" value.") @scope("Number") @val
external _NaN: t = "NaN"

@ocaml.doc("Special value representing negative infinity. Returned on overflow.")
@scope("Number")
@val
external _NEGATIVE_INFINITY: t = "NEGATIVE_INFINITY"

@ocaml.doc("Special value representing infinity. Returned on overflow.") @scope("Number") @val
external _POSITIVE_INFINITY: t = "POSITIVE_INFINITY"

// Static methods

@ocaml.doc("Determine whether the passed value is `NaN`.") @scope("Number") @val
external isNaN: 'a => bool = "isNaN"

@ocaml.doc("Determine whether the passed value is a finite number.") @scope("Number") @val
external isFinite: 'a => bool = "isFinite"

@ocaml.doc("Determine whether the passed value is an integer.") @scope("Number") @val
external isInteger: 'a => bool = "isInteger"

@ocaml.doc(
  "Determine whether the passed value is a safe integer (number between `-(2^53 - 1)` and `2^53 - 1`)."
)
@scope("Number")
@val
external isSafeInteger: 'a => bool = "isSafeInteger"

@scope("Number") @val external parseFloat: string => float = "parseFloat"

@scope("Number") @val external parseInt: string => int = "parseInt"
@scope("Number") @val external parseIntWithRadix: (string, ~radix: int) => int = "parseInt"

// Instance methods

module Impl = (
  T: {
    type t
  },
) => {
  @ocaml.doc("Returns a string representing the number in exponential notation.") @send
  external toExponential: (t, unit) => string = "toExponential"

  @ocaml.doc("Returns a string representing the number in exponential notation.") @send
  external toExponentialWithFractionDigits: (t, ~fractionDigits: int) => string = "toExponential"

  @ocaml.doc("Returns a string representing the number in fixed-point notation.") @send
  external toFixed: (t, unit) => string = "toFixed"

  @ocaml.doc("Returns a string representing the number in fixed-point notation.") @send
  external toFixedWithDigits: (t, ~digits: int) => string = "toFixed"

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

  @ocaml.doc(
    "Returns a string representing the specified number in the specified radix (\"base\")."
  )
  @send
  external toStringWithRadix: (t, ~radix: int) => string = "toString"

  @ocaml.doc("Returns the primitive value of the specified object") @send
  external valueOf: t => t = "valueOf"
}
