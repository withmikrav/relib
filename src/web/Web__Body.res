module Impl = (
  T: {
    type t
  },
) => {
  type t = T.t

  @ocaml.doc("A simple getter used to expose a `ReadableStream` of the body contents.")
  @return(nullable)
  @get
  external body: t => option<Web__ReadableStream.t> = "body"

  @ocaml.doc("A `Boolean` that indicates whether the body has been read.") @get
  external bodyUsed: t => bool = "bodyUsed"

  @ocaml.doc(
    "Takes a `Response` stream and reads it to completion. It returns a promise that resolves with an `ArrayBuffer`."
  )
  @send
  external arrayBuffer: (t, unit) => Promise.t<ArrayBuffer.t> = "arrayBuffer"

  @ocaml.doc(
    "Takes a `Response` stream and reads it to completion. It returns a promise that resolves with a `Blob`."
  )
  @send
  external blob: (t, unit) => Promise.t<Web__Blob.t> = "blob"

  @ocaml.doc(
    "Takes a `Response` stream and reads it to completion. It returns a promise that resolves with a `FormData` object."
  )
  @send
  external formData: (t, unit) => Promise.t<Web__FormData.t> = "formData"

  @ocaml.doc(
    "Takes a `Response` stream and reads it to completion. It returns a promise that resolves with the result of parsing the body text as `JSON`."
  )
  @send
  external json: (t, unit) => Promise.t<Js.Json.t> = "json"

  @ocaml.doc(
    "Takes a Response stream and reads it to completion. It returns a promise that resolves with a `String`. The response is always decoded using UTF-8."
  )
  @send
  external text: (t, unit) => Promise.t<string> = "text"
}

include Impl({
  type t
})

external fromBlob: Web__Blob.t => t = "%identity"
external fromArrayBuffer: ArrayBuffer.t => t = "%identity"
external fromFormData: Web__FormData.t => t = "%identity"
external fromURLSearchParams: Web__URLSearchParams.t => t = "%identity"
external fromString: string => t = "%identity"
external fromReadableStream: Web__ReadableStream.t => t = "%identity"
