include Error.Impl({
  type t
  let errorName = "AggregateError"
})

@new
external make: unit => t = "AggregateError"

@new
external makeWithMessage: (~message: string) => t = "AggregateError"

@get
external errors: t => array<Js.Exn.t> = "errors"
