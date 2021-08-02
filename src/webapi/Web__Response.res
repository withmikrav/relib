include Web__Body.Impl({
  type t
})

open Web__FetchTypes

type initT = {
  headers: option<Web__Headers.t>,
  status: option<int>,
  statusText: option<string>,
}

@obj
external makeInit: (
  ~headers: Web__Headers.t=?,
  ~status: int=?,
  ~statusText: string=?,
  unit,
) => initT = ""

@new external make: Web__Body.t => t = "Response"
@new external makeWithInit: (Web__Body.t, ~init: initT) => t = "Response"

@get external headers: t => Web__Headers.t = "headers"
@get external ok: t => bool = "ok"
@get external redirected: t => bool = "redirected"
@get external status: t => int = "status"
@get external statusText: t => int = "statusText"
@get external type_: t => typeT = "type"
@get external url: t => typeT = "url"

@send external clone: (t, unit) => t = "clone"
@send external error: (t, unit) => t = "error"
@send external redirect: (t, string) => t = "redirect"
@send external redirectWithStatus: (t, string, ~status: int) => t = "redirect"
