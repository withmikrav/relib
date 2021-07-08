include EventTarget.Make({
  type t
  type eventTypeT = [
    | @as("abort") #Abort
  ]
})

@set external onAbort: (t, unit => unit) => unit = "onabort"
@get external aborted: t => bool = "aborted"
