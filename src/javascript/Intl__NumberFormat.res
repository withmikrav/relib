// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/NumberFormat

type t

type compactDisplayT = [#short | #long]

type currencyDisplayT = [
  | #symbol
  | #narrowSymbol
  | #code
  | #name
]

type currencySignT = [
  | #standard
  | #accounting
]

type localeMatcherT = [
  | #lookup
  | #"best fit"
]

type notationT = [
  | #standard
  | #scientific
  | #engineering
  | #compact
]

type numberingSystemT = [
  | #arab
  | #arabext
  | #bali
  | #beng
  | #deva
  | #fullwide
  | #gujr
  | #guru
  | #hanidec
  | #khmr
  | #knda
  | #laoo
  | #latn
  | #limb
  | #mlym
  | #mong
  | #mymr
  | #orya
  | #tamldec
  | #telu
  | #thai
  | #tibt
]

type signDisplayT = [
  | #auto
  | #never
  | #always
  | #exceptZero
]

type styleT = [
  | #decimal
  | #currency
  | #percent
  | #unit
]

type unitDisplayT = [
  | #long
  | #short
  | #narrow
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

type supportedLocalesOptionsT = {localeMatcher: localeMatcherT}

@scope("Intl.NumberFormat") @val
external supportedLocalesOfWithOptions: (array<string>, supportedLocalesOptionsT) => array<string> =
  "supportedLocalesOf"

@send external formatInt: (t, int) => string = "format"
@send external formatFloat: (t, float) => string = "format"

type formatToPartsReturnT = {
  @as("type")
  type_: [
    | #currency
    | #decimal
    | #fraction
    | #group
    | #infinity
    | #integer
    | #literal
    | #minusSign
    | #nan
    | #plusSign
    | #percentSign
    | #unit
  ],
  value: string,
}

@send external formatToPartsInt: (t, int) => array<formatToPartsReturnT> = "formatToParts"
@send external formatToPartsFloat: (t, float) => array<formatToPartsReturnT> = "formatToParts"

@send external resolvedOptions: (t, unit) => optionsT = "resolvedOptions"
