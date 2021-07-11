// https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API

type t

include FetchTypes

type initT = {
  method: option<methodT>,
  headers: option<Headers.t>,
  body: option<Body.t>,
  mode: option<modeT>,
  credentials: option<credentialsT>,
  cache: option<cacheT>,
  redirect: option<redirectT>,
  referrer: option<string>,
  integrity: option<string>,
  keepalive: option<bool>,
  signal: option<AbortSignal.t>,
}

@obj
external makeInit: (
  ~method: methodT=?,
  ~headers: Headers.t=?,
  ~body: Body.t=?,
  ~mode: modeT=?,
  ~credentials: credentialsT=?,
  ~cache: cacheT=?,
  ~redirect: redirectT=?,
  ~referrer: string=?,
  ~integrity: string=?,
  ~keepalive: bool=?,
  ~signal: AbortSignal.t=?,
  unit,
) => initT = ""

@val external make: string => Promise.t<Response.t> = "fetch"
@val external makeWithInit: (string, ~init: initT) => Promise.t<Response.t> = "fetch"
@val external makeWithRequest: Request.t => Promise.t<Response.t> = "fetch"
