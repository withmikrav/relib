// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol

@ocaml.doc(
  "`Symbol` is a built-in object whose constructor returns a `symbol` primitive that’s guaranteed to be unique. `Symbols` are often used to add unique property keys to an object that won’t collide with keys any other code might add to the object, and which are hidden from any mechanisms other code will typically use to access the object. "
)
type t = Js.Types.symbol

@ocaml.doc("Creates a new `Symbol` object.") @val external make: unit => t = "Symbol"

@ocaml.doc("Creates a new `Symbol` object.") @val
external makeWithDescription: string => t = "Symbol"

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
