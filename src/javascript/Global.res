// Value properties

@val external _Infinity: float = "Infinity"

@val external _NaN: float = "NaN"

@val external undefined: Js.Undefined.t<'a> = "undefined"

// Function properties

@val external unsafe_eval: string => 'a = "eval"

@val external isFinite: 'a => bool = "isFinite"

@val external isNaN: 'a => bool = "isNaN"

@val external parseFloat: string => float = "parseFloat"

@val external parseInt: string => int = "parseInt"

@val external parseIntWithRadix: (string, ~radix: int) => int = "parseInt"

@val external encodeURI: string => string = "encodeURI"

@val external encodeURIComponent: string => string = "encodeURIComponent"

@val external decodeURI: string => string = "decodeURI"

@val external decodeURIComponent: string => string = "decodeURIComponent"
