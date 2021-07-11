include Error.Impl({
  type t
  let errorName = "RangeError"
})

@new
external make: unit => t = "RangeError"

@new
external makeWithMessage: (~message: string) => t = "RangeError"
