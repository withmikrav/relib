type t

@new external make: string => t = "URLSearchParams"
@new external makeFromDict: Js.Dict.t<string> => t = "URLSearchParams"
@new external makeFromArray: array<(string, string)> => t = "URLSearchParams"

@send external append: (t, string, string) => unit = "append"
@send external delete: (t, string) => unit = "delete"
@send external entries: (t, unit) => Iterator.t<t> = "entries"
@send external forEach: (t, (string, string) => unit) => unit = "forEach"
@send @return(nullable) external get: (t, string) => option<string> = "get"
@send external getAll: (t, string) => Iterator.t<string> = "getAll"
@send external has: (t, string) => bool = "has"
@send external keys: (t, string) => Iterator.t<string> = "keys"
@send external set: (t, string, string) => unit = "set"
@send external sort: (t, unit) => unit = "sort"
@send external toString: (t, unit) => string = "toString"
@send external values: (t, unit) => Iterator.t<string> = "values"

let a = make("?q=123")
a->entries()->Js.Array.from->Js.log
