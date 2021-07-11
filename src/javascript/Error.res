// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error

module Impl = (
  T: {
    type t
    let errorName: string
  },
) => {
  type t = T.t

  @ocaml.doc("Error message.") @get
  external message: t => option<string> = "message"

  @ocaml.doc("Error name.") @get
  external name: t => option<string> = "name"

  @ocaml.doc("A non-standard Mozilla property for a stack trace.") @get
  external stack: t => option<string> = "stack"

  @ocaml.doc("Returns a string representing the specified object.") @send
  external toString: (t, unit) => string = "toString"

  @ocaml.doc("Convert Js.Exn into Error")
  external fromJsExn: Js.Exn.t => t = "%identity"

  @ocaml.doc("Convert Error into Js.Exn")
  let toJsExn = (err: t) => Js.Exn.anyToExnInternal(err)

  let isError: t => bool = err => {
    switch err->name {
    | Some(errName) => errName === T.errorName
    | None => false
    }
  }

  let raiseError = (err: t) => {
    raise(err->toJsExn)
  }
}

include Impl({
  type t
  let errorName = "Error"
})

@new
external make: unit => t = "Error"

@new
external makeWithMessage: (~message: string) => t = "Error"
