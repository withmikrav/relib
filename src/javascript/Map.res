type t<'key, 'value> = Js.Array2.array_like<('key, 'value)>

@new
external make: unit => t<'k, 'v> = "Map"

@new
external fromEntries: array<('k, 'v)> => t<'k, 'v> = "Map"

// Instance properties

@get
external size: t<'k, 'v> => int = "size"

// Instance methods

@send
external clear: (t<'k, 'v>, unit) => unit = "clear"

@send
external delete: (t<'k, 'v>, 'k) => bool = "delete"

@send
external get: (t<'k, 'v>, 'k) => option<'v> = "get"

@send
external has: (t<'k, 'v>, 'k) => bool = "has"

@send
external set: (t<'k, 'v>, 'k, 'v) => t<'k, 'v> = "set"

// Iteration methods

@send
external keys: (t<'k, 'v>, unit) => array<'k> = "keys"

@send
external values: (t<'k, 'v>, unit) => array<'v> = "values"

@send
external entries: (t<'k, 'v>, unit) => array<('k, 'v)> = "entries"

@send
external forEach: (t<'k, 'v>, (('k, 'v)) => unit) => unit = "forEach"
