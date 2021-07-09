// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/NumberFormat

type t

type optionsT
@obj
external options: (
  ~compactDisplay: [@as("short") #Short | @as("long") #Long]=?,
  ~currency: string=?,
  ~currencyDisplay: [
    | @as("symbol") #Symbol
    | @as("narrowSymbol") #NarrowSymbol
    | @as("code") #Code
    | @as("name") #Name
  ]=?,
  ~currencySign: [
    | @as("standard") #Standard
    | @as("accounting") #Accounting
  ]=?,
  ~localeMatcher: [
    | @as("lookup") #Lookup
    | @as("best fit") #BestFit
  ]=?,
  ~notation: [
    | @as("standard") #Standard
    | @as("scientific") #Scientific
    | @as("engineering") #Engineering
    | @as("compact") #Compact
  ]=?,
  ~numberingSystem: [
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
  ]=?,
  ~signDisplay: [
    | @as("auto") #Auto
    | @as("never") #Never
    | @as("always") #Always
    | @as("exceptZero") #ExceptZero
  ]=?,
  ~style: [
    | @as("decimal") #Decimal
    | @as("currency") #Currency
    | @as("percent") #Percent
    | @as("unit") #Unit
  ]=?,
  ~unit: string,
  ~unitDisplay: [
    | @as("long") #Long
    | @as("short") #Short
    | @as("narrow") #Narrow
  ]=?,
  ~useGrouping: bool=?,
  ~minimumIntegerDigits: int=?,
  ~minimumFractionDigits: int=?,
  ~maximumFractionDigits: int=?,
  ~minimumSignificantDigits: int=?,
  ~maximumSignificantDigits: int=?,
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

@send external resolvedOptions: (t, unit) => {..} = "resolvedOptions"
