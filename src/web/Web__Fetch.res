// https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API

type t

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
  keepalive: option<bool>,
  signal: option<Web__AbortSignal.t>,
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
  ~keepalive: bool=?,
  ~signal: Web__AbortSignal.t=?,
  unit,
) => initT = ""

@val external make: string => Promise.t<Web__Response.t> = "fetch"
@val external makeWithInit: (string, ~init: initT) => Promise.t<Web__Response.t> = "fetch"
@val external makeWithRequest: Web__Request.t => Promise.t<Web__Response.t> = "fetch"
