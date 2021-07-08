type t

@new external make: unit => t = "FormData"
@new external makeFromElement: Dom.element => t = "FormData"

@send external append: (t, string, string) => unit = "append"
@send external appendFile: (t, 'a) => unit = "append"
@send external appendFileWithFilename: (t, 'a, string) => unit = "append"

@send external delete: (t, string) => unit = "delete"
@send external entries: (t, unit) => Iterator.t<t> = "entries"
@send @return(nullable) external get: (t, string) => option<string> = "get"
@send external getAll: (t, string) => Iterator.t<string> = "getAll"
@send external has: (t, string) => bool = "has"
@send external keys: (t, string) => Iterator.t<string> = "keys"
@send external set: (t, string, string) => unit = "set"
@send external values: (t, unit) => Iterator.t<string> = "values"
