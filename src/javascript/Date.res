// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date

@ocaml.doc(
  "JavaScript Date objects represent a single moment in time in a platform-independent format. Date objects contain a Number that represents milliseconds since 1 January 1970 UTC."
)
type t = Js.Date.t

@ocaml.doc(
  "Creates a JavaScript Date instance that represents a single moment in time in a platform-independent format."
)
@new
external makeNow: unit => t = "Date"

@ocaml.doc(
  "Creates a JavaScript Date instance that represents a single moment in time in a platform-independent format. From number of milliseconds since January 1, 1970, 00:00:00 UTC"
)
@new
external fromFloat: float => t = "Date"

@ocaml.doc(
  "Creates a JavaScript Date instance that represents a single moment in time in a platform-independent format. number of milliseconds since January 1, 1970, 00:00:00 UTC"
)
@new
external fromInt: int => t = "Date"

@ocaml.doc(
  "Creates a JavaScript Date instance that represents a single moment in time in a platform-independent format."
)
@new
external unsafe_fromString: string => t = "Date"

@ocaml.doc(
  "Creates a JavaScript Date instance that represents a single moment in time in a platform-independent format."
)
@new
external makeWithYM: (~year: int, ~month: int) => t = "Date"

@ocaml.doc(
  "Creates a JavaScript Date instance that represents a single moment in time in a platform-independent format."
)
@new
external makeWithYMD: (~year: int, ~month: int, ~day: int) => t = "Date"

@ocaml.doc(
  "Creates a JavaScript Date instance that represents a single moment in time in a platform-independent format."
)
@new
external makeWithYMDH: (~year: int, ~month: int, ~day: int, ~hour: int) => t = "Date"

@ocaml.doc(
  "Creates a JavaScript Date instance that represents a single moment in time in a platform-independent format."
)
@new
external makeWithYMDHM: (~year: int, ~month: int, ~day: int, ~hour: int, ~minute: int) => t = "Date"

@ocaml.doc(
  "Creates a JavaScript Date instance that represents a single moment in time in a platform-independent format."
)
@new
external makeWithYMDHMS: (
  ~year: int,
  ~month: int,
  ~day: int,
  ~hour: int,
  ~minute: int,
  ~second: int,
) => t = "Date"

@ocaml.doc(
  "Creates a JavaScript Date instance that represents a single moment in time in a platform-independent format."
)
@new
external makeWithYMDHMSm: (
  ~year: int,
  ~month: int,
  ~day: int,
  ~hour: int,
  ~minute: int,
  ~second: int,
  ~millisecond: int,
) => t = "Date"

// Static methods

@ocaml.doc("Returns the number of milliseconds elapsed since January 1, 1970 00:00:00 UTC.")
@scope("Date")
@val
external now: unit => float = "now"

@ocaml.doc("Parses a string representation of a date and returns the number of milliseconds since 1 January, 1970, 00:00:00 UTC, with leap seconds ignored.

> Note: Parsing of strings with Date.parse is strongly discouraged due to browser differences and inconsistencies.")
@scope("Date")
@val
external parse: string => float = "parse"

@ocaml.doc(
  "Accepts the same parameters as the longest form of the constructor (i.e. 2 to 7) and returns the number of milliseconds since January 1, 1970, 00:00:00 UTC, with leap seconds ignored."
)
@scope("Date")
@val
external utcY: (~year: int) => float = "utc"

@ocaml.doc(
  "Accepts the same parameters as the longest form of the constructor (i.e. 2 to 7) and returns the number of milliseconds since January 1, 1970, 00:00:00 UTC, with leap seconds ignored."
)
@scope("Date")
@val
external utcYM: (~year: int, ~month: int) => float = "UTC"

@ocaml.doc(
  "Accepts the same parameters as the longest form of the constructor (i.e. 2 to 7) and returns the number of milliseconds since January 1, 1970, 00:00:00 UTC, with leap seconds ignored."
)
@scope("Date")
@val
external utcYMD: (~year: int, ~month: int, ~day: int) => float = "UTC"

@ocaml.doc(
  "Accepts the same parameters as the longest form of the constructor (i.e. 2 to 7) and returns the number of milliseconds since January 1, 1970, 00:00:00 UTC, with leap seconds ignored."
)
@scope("Date")
@val
external utcYMDH: (~year: int, ~month: int, ~day: int, ~hour: int) => float = "UTC"

@ocaml.doc(
  "Accepts the same parameters as the longest form of the constructor (i.e. 2 to 7) and returns the number of milliseconds since January 1, 1970, 00:00:00 UTC, with leap seconds ignored."
)
@scope("Date")
@val
external utcYMDHM: (~year: int, ~month: int, ~day: int, ~hour: int, ~minute: int) => float = "UTC"

@ocaml.doc(
  "Accepts the same parameters as the longest form of the constructor (i.e. 2 to 7) and returns the number of milliseconds since January 1, 1970, 00:00:00 UTC, with leap seconds ignored."
)
@scope("Date")
@val
external utcYMDHMS: (
  ~year: int,
  ~month: int,
  ~day: int,
  ~hour: int,
  ~minute: int,
  ~second: int,
) => float = "UTC"

@ocaml.doc(
  "Accepts the same parameters as the longest form of the constructor (i.e. 2 to 7) and returns the number of milliseconds since January 1, 1970, 00:00:00 UTC, with leap seconds ignored."
)
@scope("Date")
@val
external utcYMDHMSm: (
  ~year: int,
  ~month: int,
  ~day: int,
  ~hour: int,
  ~minute: int,
  ~second: int,
  ~millisecond: int,
) => float = "UTC"

// Instance methods

@ocaml.doc("Returns the day of the month (1–31) for the specified date according to local time.")
@send
external getDate: (t, unit) => int = "getDate"

@ocaml.doc("Returns the day of the week (0–6) for the specified date according to local time.")
@send
external getDay: (t, unit) => int = "getDay"

@ocaml.doc(
  "Returns the year (4 digits for 4-digit years) of the specified date according to local time."
)
@send
external getFullYear: (t, unit) => int = "getFullYear"

@ocaml.doc("Returns the hour (0–23) in the specified date according to local time.") @send
external getHours: (t, unit) => int = "getHours"

@ocaml.doc("Returns the milliseconds (0–999) in the specified date according to local time.")
@send
external getMilliseconds: (t, unit) => int = "getMilliseconds"

@ocaml.doc("Returns the minutes (0–59) in the specified date according to local time.") @send
external getMinutes: (t, unit) => int = "getMinutes"

@ocaml.doc("Returns the month (0–11) in the specified date according to local time.") @send
external getMonth: (t, unit) => int = "getMonth"

@ocaml.doc("Returns the seconds (0–59) in the specified date according to local time.") @send
external getSeconds: (t, unit) => int = "getSeconds"

@ocaml.doc(
  "Returns the numeric value of the specified date as the number of milliseconds since January 1, 1970, 00:00:00 UTC. (Negative values are returned for prior times.)"
)
@send
external getTime: (t, unit) => float = "getTime"

@ocaml.doc("Returns the time-zone offset in minutes for the current locale.") @send
external getTimezoneOffset: (t, unit) => int = "getTimezoneOffset"

@ocaml.doc(
  "Returns the day (date) of the month (1–31) in the specified date according to universal time."
)
@send
external getUTCDate: (t, unit) => int = "getUTCDate"

@ocaml.doc("Returns the day of the week (0–6) in the specified date according to universal time.")
@send
external getUTCDay: (t, unit) => int = "getUTCDay"

@ocaml.doc(
  "Returns the year (4 digits for 4-digit years) in the specified date according to universal time."
)
@send
external getUTCFullYear: (t, unit) => int = "getUTCFullYear"

@ocaml.doc("Returns the hours (0–23) in the specified date according to universal time.") @send
external getUTCHours: (t, unit) => int = "getUTCHours"

@ocaml.doc("Returns the milliseconds (0–999) in the specified date according to universal time.")
@send
external getUTCMilliseconds: (t, unit) => int = "getUTCMilliseconds"

@ocaml.doc("Returns the minutes (0–59) in the specified date according to universal time.") @send
external getUTCMinutes: (t, unit) => int = "getUTCMinutes"

@ocaml.doc("Returns the month (0–11) in the specified date according to universal time.") @send
external getUTCMonth: (t, unit) => int = "getUTCMonth"

@ocaml.doc("Returns the seconds (0–59) in the specified date according to universal time.") @send
external getUTCSeconds: (t, unit) => int = "getUTCSeconds"

// deprecated getYear

@ocaml.doc("Sets the day of the month for a specified date according to local time.") @send
external setDate: (t, int) => float = "setDate"

@ocaml.doc(
  "Sets the full year (e.g. 4 digits for 4-digit years) for a specified date according to local time."
)
@send
external setFullYear: (t, int) => float = "setFullYear"

@ocaml.doc("Sets the hours for a specified date according to local time.") @send
external setHours: (t, int) => float = "setHours"

@ocaml.doc("Sets the milliseconds for a specified date according to local time.") @send
external setMilliseconds: (t, int) => float = "setMilliseconds"

@ocaml.doc("Sets the minutes for a specified date according to local time.") @send
external setMinutes: (t, int) => float = "setMinutes"

@ocaml.doc("Sets the month for a specified date according to local time.") @send
external setMonth: (t, int) => float = "setMonth"

@ocaml.doc("Sets the seconds for a specified date according to local time.") @send
external setSeconds: (t, int) => float = "setSeconds"

@ocaml.doc(
  "Sets the Date object to the time represented by a number of milliseconds since January 1, 1970, 00:00:00 UTC. Use negative numbers for times prior."
)
@send
external setTime: (t, float) => float = "setTime"

@ocaml.doc("Sets the day of the month for a specified date according to universal time.") @send
external setUTCDate: (t, int) => float = "setUTCDate"

@ocaml.doc(
  "Sets the full year (e.g. 4 digits for 4-digit years) for a specified date according to universal time."
)
@send
external setUTCFullYear: (t, int) => float = "setUTCFullYear"

@ocaml.doc("Sets the hour for a specified date according to universal time.") @send
external setUTCHours: (t, int) => float = "setUTCHours"

@ocaml.doc("Sets the milliseconds for a specified date according to universal time.") @send
external setUTCMilliseconds: (t, int) => float = "setUTCMilliseconds"

@ocaml.doc("Sets the minutes for a specified date according to universal time.") @send
external setUTCMinutes: (t, int) => float = "setUTCMinutes"

@ocaml.doc("Sets the month for a specified date according to universal time.") @send
external setUTCMonth: (t, int) => float = "setUTCMonth"

@ocaml.doc("Sets the seconds for a specified date according to universal time.") @send
external setUTCSeconds: (t, int) => float = "setUTCSeconds"

//

@ocaml.doc(
  "Returns the \"date\" portion of the Date as a human-readable string like 'Thu Apr 12 2018'."
)
@send
external toDateString: (t, unit) => string = "toDateString"

@ocaml.doc("Converts a date to a string following the ISO 8601 Extended Format.") @send
external toISOString: (t, unit) => string = "toISOString"

@ocaml.doc(
  "Returns a string representing the Date using toISOString(). Intended for use by JSON.stringify()."
)
@send
external toJSON: (t, unit) => string = "toJSON"

@ocaml.doc(
  "Returns a string with a locality sensitive representation of the date portion of this date based on system settings."
)
@send
external toLocaleDateString: (t, unit) => string = "toLocaleDateString"

@ocaml.doc(
  "Returns a string with a locality sensitive representation of the date portion of this date based on system settings."
)
@send
external toLocaleDateStringWithLocales: (t, ~locales: string) => string = "toLocaleDateString"

@ocaml.doc(
  "Returns a string with a locality sensitive representation of the date portion of this date based on system settings."
)
@send
external toLocaleDateStringWithOptions: (
  t,
  ~locales: string,
  ~options: Intl.DateTimeFormat.optionsT,
) => string = "toLocaleDateString"

@ocaml.doc("Returns a string with a locality-sensitive representation of this date.") @send
external toLocaleString: (t, unit) => string = "toLocaleString"

@ocaml.doc("Returns a string with a locality-sensitive representation of this date.") @send
external toLocaleStringWithLocales: (t, ~locales: string) => string = "toLocaleString"

@ocaml.doc("Returns a string with a locality-sensitive representation of this date.") @send
external toLocaleStringWithOptions: (
  t,
  ~locales: string,
  ~options: Intl.DateTimeFormat.optionsT,
) => string = "toLocaleString"

@ocaml.doc(
  "Returns a string with a locality-sensitive representation of the time portion of this date, based on system settings."
)
@send
external toLocaleTimeString: (t, unit) => string = "toLocaleTimeString"

@ocaml.doc(
  "Returns a string with a locality-sensitive representation of the time portion of this date, based on system settings."
)
@send
external toLocaleTimeStringWithLocales: (t, ~locales: string) => string = "toLocaleTimeString"

@ocaml.doc(
  "Returns a string with a locality-sensitive representation of the time portion of this date, based on system settings."
)
@send
external toLocaleTimeStringWithOptions: (
  t,
  ~locales: string,
  ~options: Intl.DateTimeFormat.optionsT,
) => string = "toLocaleTimeString"

@ocaml.doc("Returns a string representing the specified Date object") @send
external toString: t => string = "toString"

@ocaml.doc("Returns the \"time\" portion of the `Date` as a human-readable string.") @send
external toTimeString: t => string = "toTimeString"

@ocaml.doc("Converts a date to a string using the UTC timezone.") @send
external toUTCString: t => string = "toUTCString"

@ocaml.doc("Returns the primitive value of the `Date` object") @send
external valueOf: t => t = "valueOf"
