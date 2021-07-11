include Error.Impl({
  type t
  let errorName = "ReferenceError"
})

@new
external make: unit => t = "ReferenceError"

@new
external makeWithMessage: (~message: string) => t = "ReferenceError"
