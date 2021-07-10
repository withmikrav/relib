module Impl = (
  T: {
    type t
  },
) => {
  include EventTarget.Impl({
    type t
    type eventTypeT = [
      | @as("abort") #Abort
      | @as("error") #Error
      | @as("load") #Load
      | @as("loadend") #LoadEnd
      | @as("loadstart") #LoadStart
      | @as("progress") #Progress
      | @as("timeout") #Timeout
    ]
  })

  @set external onAbort: (t, unit => unit) => unit = "onabort"
  @set external onError: (t, unit => unit) => unit = "onerror"
  @set external onLoad: (t, unit => unit) => unit = "onload"
  @set external onLoadEnd: (t, unit => unit) => unit = "onloadend"
  @set external onLoadStart: (t, unit => unit) => unit = "onloadstart"
  @set external onProgress: (t, unit => unit) => unit = "onprogress"
  @set external onTimeout: (t, unit => unit) => unit = "ontimeout"
}

include Impl({
  type t
})
