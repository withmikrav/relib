@ocaml.doc(
  "JavaScript Date objects represent a single moment in time in a platform-independent format. Date objects contain a Number that represents milliseconds since 1 January 1970 UTC."
)
type t

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
