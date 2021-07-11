include Error.Impl({
  type t
  let errorName = "SyntaxError"
})

@new
external make: unit => t = "SyntaxError"

@new
external makeWithMessage: (~message: string) => t = "SyntaxError"
