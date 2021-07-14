@ocaml.doc(
  "JSON is a syntax for serializing objects, arrays, numbers, strings, booleans, and null. It is based upon JavaScript syntax but is distinct from it: some JavaScript is not JSON."
)
type t = Js.Json.t

@ocaml.doc(
  "Parse the string text as JSON, optionally transform the produced value and its properties, and return the value. "
)
@scope("JSON")
@val
external parse: string => 'a = "parse"

@ocaml.doc("Parse the string text as JSON, optionally transform the produced value and its properties, and return the value.

With reviver function, this prescribes how the value originally produced by parsing is transformed, before being returned.")
@scope("JSON")
@val
external parseWithReviver: (string, ~reviver: (string, 'a) => 'b) => 'a = "parse"

@ocaml.doc(
  "Return a JSON string corresponding to the specified value, optionally including only certain properties or replacing property values in a user-defined manner. By default, all instances of undefined are replaced with null, and other unsupported native data types are censored."
)
@scope("JSON")
@val
external stringify: 'any => string = "stringify"

@ocaml.doc("Return a JSON string corresponding to the specified value, optionally including only certain properties or replacing property values in a user-defined manner. By default, all instances of undefined are replaced with null, and other unsupported native data types are censored.

With replacer function that alters the behavior of the stringification process, or an array of String and Number that serve as an allowlist for selecting/filtering the properties of the value object to be included in the JSON string.")
@scope("JSON")
@val
external stringifyWithReplacerFn: ('any, ~replacer: (string, 'a) => 'b) => string = "stringify"

@ocaml.doc("Return a JSON string corresponding to the specified value, optionally including only certain properties or replacing property values in a user-defined manner. By default, all instances of undefined are replaced with null, and other unsupported native data types are censored.

With replacer is an array, the array's values indicate the names of the properties in the object that should be included in the resulting JSON string.")
@scope("JSON")
@val
external stringifyWithReplacerArray: ('any, ~replacer: array<string>) => string = "stringify"

@ocaml.doc("Return a JSON string corresponding to the specified value, optionally including only certain properties or replacing property values in a user-defined manner. By default, all instances of undefined are replaced with null, and other unsupported native data types are censored.

With replacer function that alters the behavior of the stringification process, or an array of String and Number that serve as an allowlist for selecting/filtering the properties of the value object to be included in the JSON string.")
@scope("JSON")
@val
external stringifyWithSpaceFn: (
  'any,
  ~replacer: option<(string, 'a) => 'b>,
  ~space: int,
) => string = "stringify"

@ocaml.doc("Return a JSON string corresponding to the specified value, optionally including only certain properties or replacing property values in a user-defined manner. By default, all instances of undefined are replaced with null, and other unsupported native data types are censored.

With replacer is an array, the array's values indicate the names of the properties in the object that should be included in the resulting JSON string.")
@scope("JSON")
@val
external stringifyWithSpaceArray: ('any, ~replacer: option<array<string>>, ~space: int) => string =
  "stringify"
