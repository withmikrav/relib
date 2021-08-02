// https://developer.mozilla.org/en-US/docs/Web/API/AbortController
// https://microsoft.github.io/PowerBI-JavaScript/interfaces/_node_modules_typedoc_node_modules_typescript_lib_lib_dom_d_.abortcontroller.html

type t

@new external make: unit => t = "AbortController"

// Properties

@get external signal: t => Web__AbortSignal.t = "signal"

// Methods

@send external abort: (t, unit) => unit = "abort"
