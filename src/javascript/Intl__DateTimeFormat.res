// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/DateTimeFormat
//

type t

@ocaml.doc("The date formatting style to use when calling `format()`.")
type dateStyleT = [
  | @as("full") #Full
  | @as("long") #Long
  | @as("medium") #Medium
  | @as("short") #Short
]

@ocaml.doc("The time formatting style to use when calling `format()`.")
type timeStyleT = [dateStyleT]

@ocaml.doc("Calendar")
type calendarT = [
  | @as("buddhist") #Buddhist
  | @as("chinese") #Chinese
  | @as("coptic") #Coptic
  | @as("ethiopia") #Ethiopia
  | @as("ethiopic") #Ethiopic
  | @as("gregory") #Gregory
  | @as("hebrew") #Hebrew
  | @as("indian") #Indian
  | @as("islamic") #Islamic
  | @as("iso8601") #Iso8601
  | @as("japanese") #Japanese
  | @as("persian") #Persian
  | @as("roc") #Roc
]

@ocaml.doc(
  "The formatting style used for day periods like \"in the morning\", \"am\", \"noon\", \"n\" etc."
)
type dayPeriodT = [
  | @as("narrow") #Narrow
  | @as("short") #Short
  | @as("long") #Long
]

@ocaml.doc("Numbering System")
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

type localeMatcherT = [
  | @as("lookup") #Lookup
  | @as("best fit") #BestFit
]

@ocaml.doc("Whether to use 12-hour time (as opposed to 24-hour time).")
type hour12T = bool

@ocaml.doc(
  "The hour cycle to use. Possible values are \"h11\", \"h12\", \"h23\", or \"h24\". This option overrides the hc language tag, if both are present, and the hour12 option takes precedence in case both options have been specified."
)
type hourCycleT = [
  | @as("h11") #H11
  | @as("h12") #H12
  | @as("h23") #H23
  | @as("h24") #H24
]

type formatMatcherT = [
  | localeMatcherT
  | @as("basic") #Basic
]

type weekdayT = [dayPeriodT]

type eraT = [weekdayT]

type yearT = [
  | @as("numeric") #Numeric
  | @as("2-digit") #TwoDigit
]

type monthT = [yearT | eraT]

type dayT = [yearT]

type hourT = [yearT]

type minuteT = [yearT]

type secondT = [yearT]

type fractionalSecondDigitsT = Zero | One | Two | Three

type timeZoneNameT = [
  | @as("long") #Long
  | @as("short") #Short
]

type optionsT = {
  dataStyle: option<dateStyleT>,
  timeStyle: option<timeStyleT>,
  calendar: option<calendarT>,
  dayPeriod: option<dayPeriodT>,
  numberingSystem: option<numberingSystemT>,
  localeMatcher: option<localeMatcherT>,
  timeZone: option<string>,
  hour12: option<hour12T>,
  hourCycle: option<hourCycleT>,
  formatMatcher: option<formatMatcherT>,
  weekday: option<weekdayT>,
  era: option<eraT>,
  year: option<yearT>,
  month: option<monthT>,
  day: option<dayT>,
  hour: option<hourT>,
  minute: option<minuteT>,
  second: option<secondT>,
  fractionalSecondDigits: option<fractionalSecondDigitsT>,
  timeZoneName: option<timeZoneNameT>,
}

@obj
external makeOptions: (
  ~dataStyle: dateStyleT=?,
  ~timeStyle: timeStyleT=?,
  ~calendar: calendarT=?,
  ~dayPeriod: dayPeriodT=?,
  ~numberingSystem: numberingSystemT=?,
  ~localeMatcher: localeMatcherT=?,
  ~timeZone: string=?,
  ~hour12: hour12T=?,
  ~hourCycle: hourCycleT=?,
  ~formatMatcher: formatMatcherT=?,
  ~weekday: weekdayT=?,
  ~era: eraT=?,
  ~year: yearT=?,
  ~month: monthT=?,
  ~day: dayT=?,
  ~hour: hourT=?,
  ~minute: minuteT=?,
  ~second: secondT=?,
  ~fractionalSecondDigits: fractionalSecondDigitsT=?,
  ~timeZoneName: timeZoneNameT=?,
  unit,
) => optionsT = ""

@scope("Intl") @new external make: string => t = "DateTimeFormat"
@scope("Intl") @new external makeWithOptions: (string, ~options: optionsT) => t = "DateTimeFormat"

@ocaml.doc(
  "Returns an array containing those of the provided locales that are supported without having to fall back to the runtime's default locale."
)
@scope("Intl.DateTimeFormat")
@val
external supportedLocalesOf: array<string> => array<string> = "supportedLocalesOf"

type supportedLocalesOptionsT = {localeMatcher: localeMatcherT}

@ocaml.doc(
  "Returns an array containing those of the provided locales that are supported without having to fall back to the runtime's default locale."
)
@scope("Intl.DateTimeFormat")
@val
external supportedLocalesOfWithOptions: (array<string>, supportedLocalesOptionsT) => array<string> =
  "supportedLocalesOf"

@ocaml.doc("Getter function that formats a date according to the locale and formatting options")
@send
external format: (t, Js.Date.t) => string = "format"

type formatToPartsReturnT = {
  @as("type")
  type_: [
    | @as("day") #Day
    | @as("dayPeriod") #DayPeriod
    | @as("era") #Era
    | @as("fractionalSecond") #FractionalSecond
    | @as("hour") #Hour
    | @as("literal") #Literal
    | @as("minute") #Minute
    | @as("month") #Month
    | @as("relatedYear") #RelatedYear
    | @as("second") #Second
    | @as("timeZoneName") #TimeZoneName
    | @as("weekday") #Weekday
    | @as("year") #Year
    | @as("yearName") #YearName
  ],
  value: string,
}

@ocaml.doc(
  "Returns an `Array` of objects representing the date string in parts that can be used for custom locale-aware formatting."
)
@send
external formatToParts: (t, Js.Date.t) => array<formatToPartsReturnT> = "formatToParts"

@ocaml.doc(
  "Returns a new object with properties reflecting the locale and formatting options computed during initialization of the object."
)
@send
external resolvedOptions: (t, unit) => optionsT = "resolvedOptions"

@ocaml.doc(
  "This method receives two Dates and formats the date range in the most concise way based on the locale and options provided when instantiating DateTimeFormat."
)
@send
external formatRange: (t, ~startDate: Js.Date.t, ~endDate: Js.Date.t) => optionsT = "formatRange"

@ocaml.doc(
  "This method receives two Dates and returns an Array of objects containing the locale-specific tokens representing each part of the formatted date range."
)
@send
external formatRangeToParts: (t, ~startDate: Js.Date.t, ~endDate: Js.Date.t) => optionsT =
  "formatRangeToParts"
