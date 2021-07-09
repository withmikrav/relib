include XMLHttpRequestEventTarget

type readyStateT =
  | Unsent
  | Opened
  | HeadersReceived
  | Loading
  | Done

type responseTypeT = [
  | @as("") #Default
  | @as("arraybuffer") #ArrayBuffer
  | @as("blob") #Blob
  | @as("document") #Document
  | @as("json") #Json
  | @as("text") #Text
]

let a = Unsent

@new external make: unit => t = "XMLHttpRequest"

// Properties

@set external onReadyStateChange: (t, unit => unit) => unit = "onreadystatechange"

@get external readyState: t => readyStateT = "readyState"
@get external response: t => 'any = "response"
@get external responseText: t => string = "responseText"

@get external responseType: t => responseTypeT = "responseType"
@set external setResponseType: (t, responseTypeT) => unit = "responseType"

@get external responseURL: t => string = "responseURL"
@get external responseXML: t => 'document = "responseXML"
@get external status: t => int = "status"
@get external statusText: t => string = "statusText"

@get external timeout: t => int = "timeout"
@set external setTimeout: (t, int) => unit = "timeout"

@get external upload: t => XMLHttpRequestUpload.t = "upload"
@get external withCredentials: t => bool = "withCredentials"

// Methods

@send external abort: (t, unit) => unit = "abort"

@send external getAllResponseHeaders: (t, unit) => string = "getAllResponseHeaders"

@return(nullable) @send
external getAllResponseHeader: (t, string) => option<string> = "getAllResponseHeader"

@send external open_: (t, HTTP.methodT, string) => unit = "open"
@send
external openWith: (
  t,
  HTTP.methodT,
  string,
  ~async: bool=?,
  ~user: string=?,
  ~password: string=?,
  unit,
) => unit = "open"

@send external overrideMimeType: (t, string) => unit = "overrideMimeType"
@send external send: (t, unit) => unit = "send"
@send external sendWithBody: (t, ~body: 'a) => unit = "send"
@send external setRequestHeader: (t, string, string) => unit = "setRequestHeader"
