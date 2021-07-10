// https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API

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

type destinationT = [
  | @as("") #Default
  | @as("audio") #Audio
  | @as("audioworklet") #AudioWorklet
  | @as("document") #Document
  | @as("embed") #Embed
  | @as("font") #Font
  | @as("image") #Image
  | @as("manifest") #Manifest
  | @as("object") #Object
  | @as("paintworklet") #PaintWorklet
  | @as("report") #Report
  | @as("script") #Script
  | @as("serviceworker") #ServiceWorker
  | @as("sharedworker") #SharedWorker
  | @as("style") #Style
  | @as("track") #Track
  | @as("video") #Video
  | @as("worker") #Worker
  | @as("xslt") #Xslt
]

type typeT = [
  | @as("basic") #Basic
  | @as("cors") #Cors
  | @as("error") #Error
  | @as("opaque") #Opaque
  | @as("opaqueredirect") #OpaqueRedirect
]

module Headers = {
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
  //
}

module Body = {
  type t

  external fromBlob: Blob.t => t = "%identity"
  external fromArrayBuffer: ArrayBuffer.t => t = "%identity"
  external fromFormData: FormData.t => t = "%identity"
  external fromURLSearchParams: URLSearchParams.t => t = "%identity"
  external fromString: string => t = "%identity"
  external fromReadableStream: ReadableStream.t => t = "%identity"
}

module Request = {
  type t

  type initT = {
    method: option<HTTP.methodT>,
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
    ~method: HTTP.methodT=?,
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

  @return(nullable) @get external body: t => option<ReadableStream.t> = "body"

  @get external bodyUsed: t => bool = "bodyUsed"
  @get external cache: t => cacheT = "cache"
  @get external credentials: t => credentialsT = "credentials"
  @get external destination: t => destinationT = "destination"
  @get external headers: t => Headers.t = "headers"
  @get external integrity: t => string = "integrity"
  @get external method: t => HTTP.methodT = "method"
  @get external mode: t => modeT = "mode"
  @get external redirect: t => redirectT = "redirect"
  @get external referrer: t => string = "referrer"
  @get external referrerPolicy: t => string = "referrerPolicy"
  @get external url: t => string = "url"

  @send external arrayBuffer: (t, unit) => Promise.t<ArrayBuffer.t> = "arrayBuffer"
  @send external blob: (t, unit) => Promise.t<Blob.t> = "blob"
  @send external clone: (t, unit) => t = "clone"
  @send external formData: (t, unit) => Promise.t<FormData.t> = "formData"
  @send external json: (t, unit) => Promise.t<Json.t> = "json"
  @send external text: (t, unit) => Promise.t<string> = "text"
}

module Response = {
  type t

  type initT = {
    headers: option<Headers.t>,
    status: option<int>,
    statusText: option<string>,
  }

  @obj
  external makeInit: (~headers: Headers.t=?, ~status: int=?, ~statusText: string=?, unit) => initT =
    ""

  @new external make: Body.t => t = "Response"
  @new external makeWithInit: (Body.t, ~init: initT) => t = "Response"

  @return(nullable) @get external body: t => option<ReadableStream.t> = "body"

  @get external bodyUsed: t => bool = "bodyUsed"
  @get external headers: t => Headers.t = "headers"
  @get external ok: t => bool = "ok"
  @get external redirected: t => bool = "redirected"
  @get external status: t => int = "status"
  @get external statusText: t => int = "statusText"
  @get external type_: t => typeT = "type"
  @get external url: t => typeT = "url"

  @send external arrayBuffer: (t, unit) => Promise.t<ArrayBuffer.t> = "arrayBuffer"
  @send external blob: (t, unit) => Promise.t<Blob.t> = "blob"
  @send external clone: (t, unit) => t = "clone"
  @send external error: (t, unit) => t = "error"
  @send external formData: (t, unit) => Promise.t<FormData.t> = "formData"
  @send external json: (t, unit) => Promise.t<Json.t> = "json"
  @send external redirect: (t, string) => t = "redirect"
  @send external redirectWithStatus: (t, string, ~status: int) => t = "redirect"
  @send external text: (t, unit) => Promise.t<string> = "text"
}

type initT = {
  method: option<HTTP.methodT>,
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
  ~method: HTTP.methodT=?,
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
