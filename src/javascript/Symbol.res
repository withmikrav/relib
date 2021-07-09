type t

@val external make: unit => t = "Symbol"
@val external makeWithDescription: string => t = "Symbol"

@ocaml.doc(
  "Searches for existing Symbols with the given `key` and returns it if found. Otherwise a new Symbol gets created in the global Symbol registry with `key`."
)
@scope("Symbol")
@val
external for_: string => t = "for"

@ocaml.doc("Retrieves a shared Symbol key from the global Symbol registry for the given Symbol.")
@scope("Symbol")
@val
external keyFor: t => string = "keyFor"

@ocaml.doc("A read-only string containing the description of the Symbol.") @get
external description: t => string = "description"

@ocaml.doc("Returns a string containing the description of the Symbol. ") @send
external toString: (t, unit) => string = "toString"

@ocaml.doc("Returns the Symbol. ") @send
external valueOf: (t, unit) => t = "valueOf"
