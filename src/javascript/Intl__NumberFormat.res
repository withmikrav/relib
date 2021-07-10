// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/NumberFormat

type t

type compactDisplayT = [@as("short") #Short | @as("long") #Long]

type currencyDisplayT = [
  | @as("symbol") #Symbol
  | @as("narrowSymbol") #NarrowSymbol
  | @as("code") #Code
  | @as("name") #Name
]

type currencySignT = [
  | @as("standard") #Standard
  | @as("accounting") #Accounting
]

type localeMatcherT = [
  | @as("lookup") #Lookup
  | @as("best fit") #BestFit
]

type notationT = [
  | @as("standard") #Standard
  | @as("scientific") #Scientific
  | @as("engineering") #Engineering
  | @as("compact") #Compact
]

type numberingSystemT = [
  | @as("arab") #Arab
  | @as("arabext") #Arabext
  | @as("bali") #Bali
  | @as("beng") #Beng
  | @as("deva") #Deva
  | @as("fullwide") #Fullwide
  | @as("gujr") #Gujr
  | @as("guru") #Guru
  | @as("hanidec") #Hanidec
  | @as("khmr") #Khmr
  | @as("knda") #Knda
  | @as("laoo") #Laoo
  | @as("latn") #Latn
  | @as("limb") #Limb
  | @as("mlym") #Mlym
  | @as("mong") #Mong
  | @as("mymr") #Mymr
  | @as("orya") #Orya
  | @as("tamldec") #Tamldec
  | @as("telu") #Telu
  | @as("thai") #Thai
  | @as("tibt") #Tibt
]

type signDisplayT = [
  | @as("auto") #Auto
  | @as("never") #Never
  | @as("always") #Always
  | @as("exceptZero") #ExceptZero
]

type styleT = [
  | @as("decimal") #Decimal
  | @as("currency") #Currency
  | @as("percent") #Percent
  | @as("unit") #Unit
]

type unitDisplayT = [
  | @as("long") #Long
  | @as("short") #Short
  | @as("narrow") #Narrow
]

type optionsT = {
  compactDisplay: option<compactDisplayT>,
  currency: option<string>,
  currencyDisplay: option<currencyDisplayT>,
  currencySign: option<currencySignT>,
  localeMatcher: option<localeMatcherT>,
  notation: option<notationT>,
  numberingSystem: option<numberingSystemT>,
  signDisplay: option<signDisplayT>,
  style: option<styleT>,
  unit: option<string>,
  unitDisplay: option<unitDisplayT>,
  useGrouping: option<bool>,
  minimumIntegerDigits: option<int>,
  minimumFractionDigits: option<int>,
  maximumFractionDigits: option<int>,
  minimumSignificantDigits: option<int>,
  maximumSignificantDigits: option<int>,
}

@obj
external makeOptions: (
  ~compactDisplay: compactDisplayT=?,
  ~currency: string=?,
  ~currencyDisplay: currencyDisplayT=?,
  ~currencySign: currencySignT=?,
  ~localeMatcher: localeMatcherT=?,
  ~notation: notationT=?,
  ~numberingSystem: numberingSystemT=?,
  ~signDisplay: signDisplayT=?,
  ~style: styleT=?,
  ~unit: string=?,
  ~unitDisplay: unitDisplayT=?,
  ~useGrouping: bool=?,
  ~minimumIntegerDigits: int=?,
  ~minimumFractionDigits: int=?,
  ~maximumFractionDigits: int=?,
  ~minimumSignificantDigits: int=?,
  ~maximumSignificantDigits: int=?,
  unit,
) => optionsT = ""

@scope("Intl") @new external make: string => t = "NumberFormat"
@scope("Intl") @new external makeWithOptions: (string, ~options: optionsT) => t = "NumberFormat"

@scope("Intl.NumberFormat") @val
external supportedLocalesOf: array<string> => array<string> = "supportedLocalesOf"

@scope("Intl.NumberFormat") @val
external supportedLocalesOfWithOptions: (array<string>, optionsT) => array<string> =
  "supportedLocalesOf"

@send external formatInt: (t, int) => string = "format"
@send external formatFloat: (t, float) => string = "format"

type formatToPartsReturnT = {
  @as("type")
  type_: [
    | @as("currency") #Currency
    | @as("decimal") #Decimal
    | @as("fraction") #Fraction
    | @as("group") #Group
    | @as("infinity") #Infinity
    | @as("integer") #Integer
    | @as("literal") #Literal
    | @as("minusSign") #MinusSign
    | @as("nan") #NaN
    | @as("plusSign") #PlusSign
    | @as("percentSign") #PercentSign
    | @as("unit") #Unit
  ],
  value: string,
}

@send external formatToPartsInt: (t, int) => array<formatToPartsReturnT> = "formatToParts"
@send external formatToPartsFloat: (t, float) => array<formatToPartsReturnT> = "formatToParts"

@send external resolvedOptions: (t, unit) => optionsT = "resolvedOptions"
