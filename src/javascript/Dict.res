@ocaml.doc("Dictionary is an object that restricted to hold a single type key and value")
type t<'a>

@ocaml.doc("Dictionary key must be `string`")
type keyT = string

@ocaml.doc("Create empty dictionary, same as `{}` in JS") @obj
external makeEmpty: unit => t<'a> = ""

@ocaml.doc("Convert dictionary into Object")
external toObject: t<'a> => {..} = "%identity"

@ocaml.doc("Create dictionary from an object")
external unsafe_fromObject: {..} => t<'a> = "%identity"

@ocaml.doc("Create dictionary from an array containing pairs of key/value") @scope("Object") @val
external fromEntries: array<(string, 'a)> => t<'a> = "fromEntries"

let delete: (t<'a>, keyT) => unit = (_dict, _key) => %raw(`delete _dict[_key]`)

@ocaml.doc("Sets the key/value in the dictionary") @set_index
external set: (t<'a>, keyT, 'a) => unit = ""

@ocaml.doc("Returns `None` if the key is not found in the dictionary, `Some(value)`` otherwise.")
@get_index
external get: (t<'a>, keyT) => option<'a> = ""

@ocaml.doc("Returns all the keys in the dictionary") @scope("Object") @val
external keys: t<'a> => array<string> = "keys"

@ocaml.doc("Returns all the values in the dictionary") @scope("Object") @val
external values: t<'a> => array<'a> = "values"

@ocaml.doc("Returns all the pairs of (key/value) in the dictionary") @scope("Object") @val
external entries: t<'a> => array<(string, 'a)> = "keys"

@ocaml.doc("Maps a dictionary to a new dictionary with the same keys")
let map = (dict, fn) =>
  dict
  ->entries
  ->Array.map(((_key, value)) => {
    fn(value)
  })
