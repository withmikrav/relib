// https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal
// https://microsoft.github.io/PowerBI-JavaScript/interfaces/_node_modules_typedoc_node_modules_typescript_lib_lib_dom_d_.abortsignal.html

include EventTarget.Impl({
  type t
  type eventTypeT = [
    | @as("abort") #Abort
  ]
})

@set external onAbort: (t, unit => unit) => unit = "onabort"
@get external aborted: t => bool = "aborted"
