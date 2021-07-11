include Error.Impl({
  type t
  let errorName = "EvalError"
})

@new
external make: unit => t = "EvalError"

@new
external makeWithMessage: (~message: string) => t = "EvalError"
