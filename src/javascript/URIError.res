include Error.Impl({
  type t
  let errorName = "URIError"
})

@new
external make: unit => t = "URIError"

@new
external makeWithMessage: (~message: string) => t = "URIError"
