// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RegExp

@ocaml.doc("The RegExp object is used for matching text with a pattern.")
type t = Js.Re.t

@ocaml.doc("Creates a new `RegExp` object.") @new
external fromString: string => t = "RegExp"

@ocaml.doc("Creates a new `RegExp` object.") @new
external fromStringWithFlags: (string, ~flags: string) => t = "RegExp"

// Instance properties
@ocaml.doc("A string that contains the flags of the `RegExp` object.") @get
external flags: t => string = "flags"

@ocaml.doc("Whether `.` matches newlines or not.") @get
external dotAll: t => bool = "dotAll"

@ocaml.doc(
  "Whether to test the regular expression against all possible matches in a string, or only against the first."
)
@get
external global: t => bool = "global"

@ocaml.doc(
  "Whether the regular expression result exposes the start and end indices of captured substrings."
)
@get
external hasIndices: t => bool = "hasIndices"

@ocaml.doc("Whether to ignore case while attempting a match in a string.") @get
external ignoreCase: t => bool = "ignoreCase"

@ocaml.doc("The text of the pattern.") @get
external source: t => string = "source"

@ocaml.doc("Whether or not the search is sticky.") @get
external sticky: t => bool = "sticky"

@ocaml.doc("The index at which to start the next match.") @get
external lastIndex: t => int = "lastIndex"

// Instance methods

type execResultT = {
  @as("0") _0: string,
  @as("1") _1: option<string>,
  @as("2") _2: option<string>,
  @as("3") _3: option<string>,
  @as("4") _4: option<string>,
  @as("5") _5: option<string>,
  @as("6") _6: option<string>,
  index: int,
  indices: option<array<(int, int)>>,
  input: string,
}

@ocaml.doc("Executes a search for a match in its string parameter.") @send @return(nullable)
external exec: (t, string) => option<execResultT> = "exec"

@ocaml.doc("Tests for a match in its string parameter.") @send
external test: (t, string) => bool = "test"

@ocaml.doc("Returns a string representing the specified object") @send
external toString: (t, unit) => string = "toString"
