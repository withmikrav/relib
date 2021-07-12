@ocaml.doc("The String object is used to represent and manipulate a sequence of characters.")
type t = string

@ocaml.doc("Create string object") @new external make: 'any => t = "String"

@ocaml.doc("Type conversion using `String` function") @val external fromAny: 'any => t = "String"

// Static methods

@ocaml.doc("Returns a string created by using the specified sequence of Unicode values.")
@scope("String")
@variadic
@val
external fromCharCode: array<int> => t = "fromCharCode"

@ocaml.doc("Returns a string created by using the specified sequence of code points.
")
@scope("String")
@variadic
@val
external fromCodePoint: array<int> => t = "fromCodePoint"

@ocaml.doc("Returns a string created from a raw template string.") @scope("String") @val
external raw: t => t = "raw"

// Instance properties

@ocaml.doc("Reflects the length of the string.") @get
external length: t => int = "length"

// Instance methods

@ocaml.doc("Returns the character (exactly one UTF-16 code unit) at the specified index.") @send
external charAt: (t, int) => t = "charAt"

@ocaml.doc("Returns a number that is the UTF-16 code unit value at the given index.") @send
external charCodeAt: (t, int) => int = "charCodeAt"

@ocaml.doc(
  "Returns a nonnegative integer Number that is the code point value of the UTF-16 encoded code point starting at the specified pos."
)
@send
external codePointAt: (t, int) => int = "codePointAt"

@ocaml.doc("Combines the text of two strings and returns a new string.") @send
external concat: (t, t) => t = "concat"

@ocaml.doc("Combines the text of two or more strings and returns a new string.") @send @variadic
external concatMany: (t, array<t>) => t = "concat"

@ocaml.doc("Determines whether the calling string contains searchString.") @send
external includes: (t, t) => bool = "includes"

@ocaml.doc("Determines whether the calling string contains searchString.") @send
external includesWithPosition: (t, t, ~position: int) => bool = "includes"

@ocaml.doc("Determines whether a string ends with the characters of the string searchString.") @send
external endsWith: (t, t) => bool = "endsWith"

@ocaml.doc("Determines whether a string ends with the characters of the string searchString.") @send
external endsWithLength: (t, t, ~length: int) => bool = "endsWith"

@ocaml.doc(
  "Returns the index within the calling String object of the first occurrence of searchValue, or -1 if not found."
)
@send
external indexOf: (t, t) => int = "indexOf"

@ocaml.doc(
  "Returns the index within the calling String object of the first occurrence of searchValue, or -1 if not found."
)
@send
external indexOfWithFromIndex: (t, t, ~fromIndex: int) => int = "indexOf"

@ocaml.doc(
  "Returns the index within the calling String object of the last occurrence of searchValue, or -1 if not found."
)
@send
external lastIndexOf: (t, t) => int = "lastIndexOf"

@ocaml.doc(
  "Returns the index within the calling String object of the last occurrence of searchValue, or -1 if not found."
)
@send
external lastIndexOfWithFromIndex: (t, t, ~fromIndex: int) => int = "lastIndexOf"

@ocaml.doc(
  "Returns a number indicating whether the reference string `compareString` comes before, after, or is equivalent to the given string in sort order."
)
@send
external localeCompare: (t, t) => int = "localeCompare"

@ocaml.doc(
  "Returns a number indicating whether the reference string `compareString` comes before, after, or is equivalent to the given string in sort order."
)
@send
external localeCompareWithLocales: (t, t, ~locales: string) => int = "localeCompare"

@ocaml.doc(
  "Returns a number indicating whether the reference string `compareString` comes before, after, or is equivalent to the given string in sort order."
)
@send
external localeCompareWithOptions: (
  t,
  t,
  ~locales: string,
  ~options: Intl.Collator.optionsT,
) => int = "localeCompare"

@ocaml.doc("Used to match regular expression `regexp` against a string.") @send
external match: (t, Js.Re.t) => array<string> = "match"

@ocaml.doc("Returns an iterator of all `regexp`'s matches.") @send
external matchAll: (t, Js.Re.t) => Iterator.t<string> = "matchAll"

@ocaml.doc("Returns the Unicode Normalization Form of the calling string value.") @send
external normalize: (t, unit) => string = "normalize"

type formT = [
  | #NFC
  | #NFD
  | #NFKC
  | #NFKD
]
@ocaml.doc("Returns the Unicode Normalization Form of the calling string value.") @send
external normalizeWithForm: (t, ~form: formT) => string = "normalize"

@ocaml.doc(
  "Pads the current string from the end with a given string and returns a new string of the length `targetLength`."
)
@send
external padEnd: (t, int) => string = "padEnd"

@ocaml.doc(
  "Pads the current string from the start with a given string and returns a new string of the length `targetLength`."
)
@send
external padEndWithPadString: (t, int, ~padString: string) => string = "padEnd"

@ocaml.doc(
  "Pads the current string from the start with a given string and returns a new string of the length `targetLength`."
)
@send
external padStart: (t, int) => string = "padStart"

@ocaml.doc(
  "Pads the current string from the end with a given string and returns a new string of the length `targetLength`."
)
@send
external padStartWithPadString: (t, int, ~padString: string) => string = "padStart"

@ocaml.doc("Returns a string consisting of the elements of the object repeated `count` times.")
@send
external repeat: (t, int) => string = "repeat"

@ocaml.doc("Used to replace occurrences of `searchFor` using `replaceWith`. ") @send
external replace: (t, string, string) => string = "replace"

@ocaml.doc("Used to replace occurrences of `searchFor` using `replaceWith`. ") @send
external replaceWithRegExp: (t, Js.Re.t, string) => string = "replace"

@ocaml.doc("Used to replace occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceWithFunction0: (
  t,
  Js.Re.t,
  (~match: string, ~offset: string, ~string: string) => string,
) => string = "replace"

@ocaml.doc("Used to replace occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceWithFunction1: (
  t,
  Js.Re.t,
  (~match: string, ~p1: string, ~offset: int, ~string: string) => string,
) => string = "replace"

@ocaml.doc("Used to replace occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceWithFunction2: (
  t,
  Js.Re.t,
  (~match: string, ~p1: string, ~p2: string, ~offset: int, ~string: string) => string,
) => string = "replace"

@ocaml.doc("Used to replace occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceWithFunction3: (
  t,
  Js.Re.t,
  (~match: string, ~p1: string, ~p2: string, ~p3: string, ~offset: int, ~string: string) => string,
) => string = "replace"

@ocaml.doc("Used to replace occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceWithFunction4: (
  t,
  Js.Re.t,
  (
    ~match: string,
    ~p1: string,
    ~p2: string,
    ~p3: string,
    ~p4: string,
    ~offset: int,
    ~string: string,
  ) => string,
) => string = "replace"

@ocaml.doc("Used to replace occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceWithFunction5: (
  t,
  Js.Re.t,
  (
    ~match: string,
    ~p1: string,
    ~p2: string,
    ~p3: string,
    ~p4: string,
    ~p5: string,
    ~offset: int,
    ~string: string,
  ) => string,
) => string = "replace"

@ocaml.doc("Used to replace all occurrences of `searchFor` using `replaceWith`. ") @send
external replaceAll: (t, string, string) => string = "replaceAll"

@ocaml.doc("Used to replace all occurrences of `searchFor` using `replaceWith`. ") @send
external replaceAllWithRegExp: (t, Js.Re.t, string) => string = "replaceAll"

@ocaml.doc("Used to replace all occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceAllWithFunction0: (
  t,
  Js.Re.t,
  (~match: string, ~offset: string, ~string: string) => string,
) => string = "replaceAll"

@ocaml.doc("Used to replace all occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceAllWithFunction1: (
  t,
  Js.Re.t,
  (~match: string, ~p1: string, ~offset: int, ~string: string) => string,
) => string = "replaceAll"

@ocaml.doc("Used to replace all occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceAllWithFunction2: (
  t,
  Js.Re.t,
  (~match: string, ~p1: string, ~p2: string, ~offset: int, ~string: string) => string,
) => string = "replaceAll"

@ocaml.doc("Used to replace all occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceAllWithFunction3: (
  t,
  Js.Re.t,
  (~match: string, ~p1: string, ~p2: string, ~p3: string, ~offset: int, ~string: string) => string,
) => string = "replaceAll"

@ocaml.doc("Used to replace all occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceAllWithFunction4: (
  t,
  Js.Re.t,
  (
    ~match: string,
    ~p1: string,
    ~p2: string,
    ~p3: string,
    ~p4: string,
    ~offset: int,
    ~string: string,
  ) => string,
) => string = "replaceAll"

@ocaml.doc("Used to replace all occurrences of `searchFor` using `replaceWith`. ") @send
external unsafe_replaceAllWithFunction5: (
  t,
  Js.Re.t,
  (
    ~match: string,
    ~p1: string,
    ~p2: string,
    ~p3: string,
    ~p4: string,
    ~p5: string,
    ~offset: int,
    ~string: string,
  ) => string,
) => string = "replaceAll"

@ocaml.doc("Search for a match between a regular expression regexp and the calling string.") @send
external search: (t, Js.Re.t) => int = "search"

@ocaml.doc("Extracts a section of a string and returns a new string.") @send
external slice: (t, ~start: int, ~end: int) => t = "slice"

@ocaml.doc("Extracts a section of a string and returns a new string.") @send
external sliceFrom: (t, int) => t = "slice"

@ocaml.doc(
  "Returns an array of strings populated by splitting the calling string at occurrences of the substring `separator`."
)
external split: (t, ~separator: string) => t = "split"

@ocaml.doc(
  "Returns an array of strings populated by splitting the calling string at occurrences of the substring `separator`."
)
external splitWithRegex: (t, ~separator: Js.Re.t) => t = "split"

@ocaml.doc(
  "Returns an array of strings populated by splitting the calling string at occurrences of the substring `separator`."
)
external splitWithLimit: (t, ~separator: Js.Re.t, ~limit: int) => t = "split"

@ocaml.doc("Determines whether a string starts with the characters of the string searchString.")
@send
external startsWith: (t, t) => bool = "startsWith"

@ocaml.doc("Determines whether a string starts with the characters of the string searchString.")
@send
external startsWithFrom: (t, t, ~from: int) => bool = "startsWith"

@ocaml.doc(
  "Returns a new string containing characters of the calling string from (or between) the specified index (or indeces)."
)
@send
external substring: (t, ~start: int, ~end: int) => t = "substring"

@ocaml.doc(
  "Returns a new string containing characters of the calling string from (or between) the specified index (or indeces)."
)
@send
external substringFrom: (t, int) => t = "substring"

@ocaml.doc("The characters within a string are converted to lowercase while respecting the current locale.

For most languages, this will return the same as `toLowerCase()`.")
@send
external toLocaleLowerCase: (t, ~locale: string) => t = "toLocaleLowerCase"

@ocaml.doc("The characters within a string are converted to lowercase while respecting the current locale.

For most languages, this will return the same as `toLowerCase()`.")
@send
external toLocaleLowerCaseArray: (t, ~locales: array<string>) => t = "toLocaleLowerCase"

@ocaml.doc("The characters within a string are converted to uppercase while respecting the current locale.

For most languages, this will return the same as `toUpperCase()`.")
@send
external toLocaleUpperCase: (t, ~locale: string) => t = "toLocaleUpperCase"

@ocaml.doc("The characters within a string are converted to uppercase while respecting the current locale.

For most languages, this will return the same as `toUpperCase()`.")
@send
external toLocaleUpperCaseArray: (t, ~locales: array<string>) => t = "toLocaleUpperCase"

@ocaml.doc("Returns the calling string value converted to lowercase.") @send
external toLowerCase: (t, unit) => t = "toLowerCase"

@ocaml.doc("Returns a string representing the specified object.") @send
external toString: (t, unit) => t = "toString"

@ocaml.doc("Returns the calling string value converted to uppercase.") @send
external toUpperCase: (t, unit) => t = "toUpperCase"

@ocaml.doc("Trims whitespace from the beginning and end of the string.") @send
external trim: (t, unit) => t = "trim"

@ocaml.doc("Trims whitespace from the end of the string.") @send
external trimStart: (t, unit) => t = "trimStart"

@ocaml.doc("Trims whitespace from the beginning of the string.") @send
external trimEnd: (t, unit) => t = "trimEnd"

@ocaml.doc("Returns the primitive value of the specified object.") @send
external valueOf: (t, unit) => t = "valueOf"
