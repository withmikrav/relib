type t

module Headers = {
  type t
  @new external make: unit => t = "Headers"
  @new external makeWithObject: {..} => t = "Headers"

  @send external append: (t, string, string) => unit = "append"
  @send external delete: (t, string) => unit = "delete"
  @send external entries: (t, unit) => Iterator.t<(string, string)> = "entries"
  // @send external forEach: (t, unit) => unit = "forEach"
  @send external get: (t, string) => string = "get"
  @send external has: (t, string) => bool = "has"
  @send external keys: (t, unit) => Iterator.t<string> = "keys"
  @send external set: (t, string, string) => unit = "set"
  @send external values: (t, string) => Iterator.t<string> = "values"
  //
}

module Body = {
  type t
}

module Request = {
  type t

  type modeT = [
    | @as("cors") #Cors
    | @as("no-cors") #NoCors
    | @as("same-origin") #SameOrigin
    | @as("navigate") #Navigate
  ]

  type credentialsT = [
    | @as("omit") #Omit
    | @as("same-origin") #SameOrigin
    | @as("include") #Include
  ]

  type cacheT = [
    | @as("default") #Default
    | @as("no-store") #NoStore
    | @as("reload") #Reload
    | @as("no-cache") #NoCache
    | @as("force-cache") #ForceCache
    | @as("only-if-cached") #OnlyIfCached
  ]
  type redirectT = [
    | @as("follow") #Follow
    | @as("error") #Error
    | @as("manual") #Manual
  ]

  type initT = {
    _method: option<HTTP.methodT>,
    headers: option<Headers.t>,
    body: option<Body.t>,
    mode: option<modeT>,
    credentials: option<credentialsT>,
    cache: option<cacheT>,
    redirect: option<redirectT>,
    referrer: option<string>,
    integrity: option<string>,
  }

  @obj
  external makeInit: (
    ~_method: HTTP.methodT=?,
    ~headers: Headers.t=?,
    ~body: Body.t=?,
    ~mode: modeT=?,
    ~credentials: credentialsT=?,
    ~cache: cacheT=?,
    ~redirect: redirectT=?,
    ~referrer: string=?,
    ~integrity: string=?,
    unit,
  ) => initT = ""

  @new external make: string => t = "Request"
  @new external makeWithInit: (string, ~init: initT) => t = "Request"

  @return(nullable) @get external body: t => option<'a> = "get"
}

@val external make: string => t = "fetch"
// @val external makeWithInit: ()
