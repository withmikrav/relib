type t

@new external makeInt: int => t = "Number"
@new external makeFloat: float => t = "Number"

external unsafeToInt: t => int = "%identity"
external unsafeToFloat: t => float = "%identity"

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

//

@ocaml.doc("Determine whether the passed value is `NaN`.") @send
external isNaN: (t, unit) => bool = "isNaN"

@ocaml.doc("Determine whether the passed value is a finite number.") @send
external isFinite: (t, unit) => bool = "isFinite"

@ocaml.doc("Determine whether the passed value is an integer.") @send
external isInteger: (t, unit) => bool = "isInteger"

@ocaml.doc(
  "Determine whether the passed value is a safe integer (number between `-(2^53 - 1)` and `2^53 - 1`)."
)
@send
external isSafeInteger: (t, unit) => bool = "isSafeInteger"
