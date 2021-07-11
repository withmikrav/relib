// https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
// https://microsoft.github.io/PowerBI-JavaScript/interfaces/_node_modules_typedoc_node_modules_typescript_lib_lib_dom_d_.xmlhttprequest.html

include XMLHttpRequestEventTarget.Impl({
  type t
})

module Body = {
  type t

  external fromBlob: Blob.t => t = "%identity"
  external fromArrayBuffer: ArrayBuffer.t => t = "%identity"
  external fromFormData: FormData.t => t = "%identity"
  external fromURLSearchParams: URLSearchParams.t => t = "%identity"
  external fromString: string => t = "%identity"
}

module Response = {
  type t

  external unsafe_toBlob: t => Blob.t = "%identity"
  external unsafe_toArrayBuffer: t => ArrayBuffer.t = "%identity"
  external unsafe_toDocument: t => Document.t = "%identity"
  external unsafe_toString: t => string = "%identity"
  external unsafe_toJson: t => Json.t = "%identity"
}

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

@new external make: unit => t = "XMLHttpRequest"

// Properties

@set external onReadyStateChange: (t, unit => unit) => unit = "onreadystatechange"

@get external readyState: t => readyStateT = "readyState"
@get external response: t => Response.t = "response"
@return(nullable) @get external responseText: t => option<string> = "responseText"

@get external responseType: t => responseTypeT = "responseType"
@set external setResponseType: (t, responseTypeT) => unit = "responseType"

@return(nullable) @get external responseURL: t => option<string> = "responseURL"
@return(nullable) @get external responseXML: t => option<Document.t> = "responseXML"
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

@send external open_: (t, ~method: FetchTypes.methodT, ~url: string) => unit = "open"
@send
external openWith: (
  t,
  ~method: FetchTypes.methodT,
  ~url: string,
  ~async: bool=?,
  ~user: string=?,
  ~password: string=?,
  unit,
) => unit = "open"

@send external overrideMimeType: (t, string) => unit = "overrideMimeType"
@send external send: (t, unit) => unit = "send"
@send external sendWithBody: (t, ~body: Body.t) => unit = "send"
@send external setRequestHeader: (t, string, string) => unit = "setRequestHeader"
