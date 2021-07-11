//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math

// Static properties

@ocaml.doc("Euler's constant and the base of natural logarithms; approximately `2.718`.")
@scope("Math")
@val
external _E: float = "E"

@ocaml.doc("Natural logarithm of `2`; approximately `0.693`.") @scope("Math") @val
external _LN2: float = "LN2"

@ocaml.doc("Natural logarithm of `10`; approximately `2.303`.") @scope("Math") @val
external _LN10: float = "LN10"

@ocaml.doc("Base-2 logarithm of `E`; approximately `1.443`.") @scope("Math") @val
external _LOG2E: float = "LOG2E"

@ocaml.doc("Base-10 logarithm of `E`; approximately `0.434`.") @scope("Math") @val
external _LOG10E: float = "LOG10E"

@ocaml.doc("Ratio of the a circle's circumference to its diameter; approximately `3.14159`.")
@scope("Math")
@val
external _PI: float = "PI"

@ocaml.doc("Square root of ½; approximately `0.707`.") @scope("Math") @val
external _SQRT1_2: float = "SQRT1_2"

@ocaml.doc("Square root of `2`; approximately `1.414`.") @scope("Math") @val
external _SQRT2: float = "SQRT2"

module Impl = (
  T: {
    type t
  },
) => {
  type t = T.t
  // Static methods

  @ocaml.doc("Returns the absolute value of `x`.") @scope("Math") @val
  external abs: t => t = "abs"

  @ocaml.doc("Returns the arccosine of `x`.") @scope("Math") @val
  external acos: t => float = "acos"

  @ocaml.doc("Returns the hyperbolic arccosine of `x`.") @scope("Math") @val
  external acosh: t => float = "acosh"

  @ocaml.doc("Returns the arcsine of `x`.") @scope("Math") @val
  external asin: t => float = "asin"

  @ocaml.doc("Returns the hyperbolic arcsine of `x`.") @scope("Math") @val
  external asinh: t => float = "asinh"

  @ocaml.doc("Returns the arctangent of `x`.") @scope("Math") @val
  external atan: t => float = "atan"

  @ocaml.doc("Returns the hyperbolic arctangent of `x`.") @scope("Math") @val
  external atanh: t => float = "atanh"

  @ocaml.doc("Returns the arctangent of the quotient of its arguments.") @scope("Math") @val
  external atan2: (~y: t, ~x: t) => float = "atan2"

  @ocaml.doc("Returns the cube root of `x`.") @scope("Math") @val
  external cbrt: t => float = "cbrt"

  @ocaml.doc("Returns the smallest integer greater than or equal to `x`.") @scope("Math") @val
  external ceil: t => int = "ceil"

  @ocaml.doc("Returns the number of leading zero bits of the 32-bit integer `x`.")
  @scope("Math")
  @val
  external clz32: t => int = "clz32"

  @ocaml.doc("Returns the cosine of `x`.") @scope("Math") @val
  external cos: t => float = "cos"

  @ocaml.doc("Returns the hyperbolic cosine of `x`.") @scope("Math") @val
  external cosh: t => float = "cosh"

  @ocaml.doc(
    "Returns `e^x`, where `x` is the argument, and `e` is Euler's constant (`2.718…`, the base of the natural logarithm)."
  )
  @scope("Math")
  @val
  external exp: t => float = "exp"

  @ocaml.doc("Returns subtracting `1` from `exp(x)`.") @scope("Math") @val
  external expm1: t => float = "expm1"

  @ocaml.doc("Returns the largest integer less than or equal to `x`.") @scope("Math") @val
  external floor: t => int = "floor"

  @ocaml.doc("Returns the nearest single precision float representation of `x`.")
  @scope("Math")
  @val
  external fround: t => float = "fround"

  @ocaml.doc("Returns the square root of the sum of squares of its arguments.")
  @scope("Math")
  @val
  @variadic
  external hypot: array<t> => float = "hypot"

  @ocaml.doc("Returns the result of the 32-bit integer multiplication of `x` and `y`.")
  @scope("Math")
  @val
  external imul: (t, t) => int = "imul"

  @ocaml.doc("Returns the natural logarithm (㏒e; also, ㏑) of `x`.") @scope("Math") @val
  external log: t => float = "log"

  @ocaml.doc("Returns the natural logarithm (㏒e; also ㏑) of `1 + x` for the number `x`.")
  @scope("Math")
  @val
  external log1p: t => float = "log1p"

  @ocaml.doc("Returns the base-10 logarithm of `x`.") @scope("Math") @val
  external log10: t => float = "log10"

  @ocaml.doc("Returns the base-10 logarithm of `x`.") @scope("Math") @val
  external log2: t => float = "log2"

  @ocaml.doc("Returns the largest of zero or more numbers.") @scope("Math") @val @variadic
  external max: array<t> => float = "max"

  @ocaml.doc("Returns the smallest of zero or more numbers.") @scope("Math") @val @variadic
  external min: array<t> => float = "min"

  @ocaml.doc("Returns base `x` to the exponent power `y` (that is, `x^y`).") @scope("Math") @val
  external pow: (t, t) => t = "pow"

  @ocaml.doc("Returns a pseudo-random number between `0` and `1`.") @scope("Math") @val
  external random: unit => float = "random"

  @ocaml.doc("Returns the value of the number `x` rounded to the nearest integer.")
  @scope("Math")
  @val
  external round: t => int = "round"

  @ocaml.doc("Returns the sign of the `x`, indicating whether `x` is positive, negative, or zero.")
  @scope("Math")
  @val
  external sign: t => int = "sign"

  @ocaml.doc("Returns the sine of `x`.") @scope("Math") @val
  external sin: t => float = "sin"

  @ocaml.doc("Returns the hyperbolic sine of `x`.") @scope("Math") @val
  external sinh: t => float = "sinh"

  @ocaml.doc("Returns the positive square root of x.") @scope("Math") @val
  external sqrt: t => float = "sqrt"

  @ocaml.doc("Returns the tangent of x.") @scope("Math") @val
  external tan: t => float = "tan"

  @ocaml.doc("Returns the hyperbolic tangent of x.") @scope("Math") @val
  external tanh: t => float = "tanh"

  @ocaml.doc("Returns the integer portion of `x`, removing any fractional digits.")
  @scope("Math")
  @val
  external trunc: t => int = "trunc"
}

module Int = {
  include Impl({
    type t = int
  })
}

module Float = {
  include Impl({
    type t = float
  })
}

let random = Float.random
