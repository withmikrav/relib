type t

@new external make: string => t = "URL"
@new external makeWith: (string, ~base: string) => t = "URL"

@send external toString: (t, unit) => string = "toString"
@send external toJSON: (t, unit) => string = "toJSON"

@get external hash: t => string = "hash"
@get external host: t => string = "host"
@get external hostname: t => string = "hostname"
@get external href: t => string = "href"
@get external origin: t => string = "origin"
@get external password: t => string = "password"
@get external pathname: t => string = "pathname"
@get external port: t => string = "port"
@get external protocol: t => string = "protocol"
@get external search: t => string = "search"
@get external searchParams: t => URLSearchParams.t = "searchParams"
@get external username: t => string = "username"

@set external setHash: (t, string) => unit = "hash"
@set external setHost: (t, string) => unit = "host"
@set external setHostname: (t, string) => unit = "hostname"
@set external setHref: (t, string) => unit = "href"
@set external setPassword: (t, string) => unit = "password"
@set external setPathname: (t, string) => unit = "pathname"
@set external setPort: (t, string) => unit = "port"
@set external setProtocol: (t, string) => unit = "protocol"
@set external setSearch: (t, string) => unit = "search"
@set external setUsername: (t, string) => unit = "username"

@scope("URL") @val external createObjectURL: 'a => string = "createObjectURL"
@scope("URL") @val external revokeObjectURL: string => unit = "revokeObjectURL"
