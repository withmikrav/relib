type t

@new external make: {..} => t = "Headers"
@new external makeEmpty: unit => t = "Headers"

@new external fromObject: {..} => t = "Headers"

@send external append: (t, string, string) => unit = "append"
@send external delete: (t, string) => unit = "delete"
@send external entries: (t, unit) => Iterator.t<(string, string)> = "entries"
// @send external forEach: (t, unit) => unit = "forEach"
@send external get: (t, string) => string = "get"
@send external has: (t, string) => bool = "has"
@send external keys: (t, unit) => Iterator.t<string> = "keys"
@send external set: (t, string, string) => unit = "set"
@send external values: (t, string) => Iterator.t<string> = "values"
