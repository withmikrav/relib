include Web__Body.Impl({
  type t
})

open Web__FetchTypes

type initT = {
  method: option<methodT>,
  headers: option<Web__Headers.t>,
  body: option<Web__Body.t>,
  mode: option<modeT>,
  credentials: option<credentialsT>,
  cache: option<cacheT>,
  redirect: option<redirectT>,
  referrer: option<string>,
  integrity: option<string>,
}

@obj
external makeInit: (
  ~method: methodT=?,
  ~headers: Web__Headers.t=?,
  ~body: Web__Body.t=?,
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

@get external cache: t => cacheT = "cache"
@get external credentials: t => credentialsT = "credentials"
@get external destination: t => destinationT = "destination"
@get external headers: t => Web__Headers.t = "headers"
@get external integrity: t => string = "integrity"
@get external method: t => methodT = "method"
@get external mode: t => modeT = "mode"
@get external redirect: t => redirectT = "redirect"
@get external referrer: t => string = "referrer"
@get external referrerPolicy: t => string = "referrerPolicy"
@get external url: t => string = "url"

@send external clone: (t, unit) => t = "clone"
