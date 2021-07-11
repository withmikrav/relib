include Error.Impl({
  type t
  let errorName = "TypeError"
})

@new
external make: unit => t = "TypeError"

@new
external makeWithMessage: (~message: string) => t = "TypeError"
