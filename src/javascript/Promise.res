@ocaml.doc(
  "The Promise object represents the eventual completion (or failure) of an asynchronous operation and its resulting value."
)
type t<'a> = Js.Promise.t<'a>

@new external make: ((~resolve: 'a => unit, ~reject: 'err => unit) => unit) => t<'a> = "Promise"

// Static methods

// all
@ocaml.doc("Wait for all promises to be resolved, or for any to be rejected.

If the returned promise resolves, it is resolved with an aggregating array of the values from the resolved promises, in the same order as defined in the iterable of multiple promises.

If it rejects, it is rejected with the reason from the first promise in the iterable that was rejected.")
@scope("Promise")
@val
external all: array<t<'a>> => t<array<'a>> = "all"

@ocaml.doc("Wait for all promises to be resolved, or for any to be rejected.

If the returned promise resolves, it is resolved with an aggregating array of the values from the resolved promises, in the same order as defined in the iterable of multiple promises.

If it rejects, it is rejected with the reason from the first promise in the iterable that was rejected.")
@scope("Promise")
@val
external all2: ((t<'a>, t<'b>)) => t<('a, 'b)> = "all"

@ocaml.doc("Wait for all promises to be resolved, or for any to be rejected.

If the returned promise resolves, it is resolved with an aggregating array of the values from the resolved promises, in the same order as defined in the iterable of multiple promises.

If it rejects, it is rejected with the reason from the first promise in the iterable that was rejected.")
@scope("Promise")
@val
external all3: ((t<'a>, t<'b>, t<'c>)) => t<('a, 'b, 'c)> = "all"

@ocaml.doc("Wait for all promises to be resolved, or for any to be rejected.

If the returned promise resolves, it is resolved with an aggregating array of the values from the resolved promises, in the same order as defined in the iterable of multiple promises.

If it rejects, it is rejected with the reason from the first promise in the iterable that was rejected.")
@scope("Promise")
@val
external all4: ((t<'a>, t<'b>, t<'c>, t<'d>)) => t<('a, 'b, 'c, 'd)> = "all"

@ocaml.doc("Wait for all promises to be resolved, or for any to be rejected.

If the returned promise resolves, it is resolved with an aggregating array of the values from the resolved promises, in the same order as defined in the iterable of multiple promises.

If it rejects, it is rejected with the reason from the first promise in the iterable that was rejected.")
@scope("Promise")
@val
external all5: ((t<'a>, t<'b>, t<'c>, t<'d>, t<'e>)) => t<('a, 'b, 'c, 'd, 'e)> = "all"

@ocaml.doc("Wait for all promises to be resolved, or for any to be rejected.

If the returned promise resolves, it is resolved with an aggregating array of the values from the resolved promises, in the same order as defined in the iterable of multiple promises.

If it rejects, it is rejected with the reason from the first promise in the iterable that was rejected.")
@scope("Promise")
@val
external all6: ((t<'a>, t<'b>, t<'c>, t<'d>, t<'e>, t<'f>)) => t<('a, 'b, 'c, 'd, 'e, 'f)> = "all"

// allSettled

type settledResultStatusT = [@as("fullfilled") #Fullfilled | @as("rejected") #Rejected]
type settledResultT<'a> = {
  status: settledResultStatusT,
  value: option<'a>,
  reason: option<Error.t>,
}

@ocaml.doc("Wait until all promises have settled (each may resolve or reject).

Returns a Promise that resolves after all of the given promises is either fulfilled or rejected, with an array of objects that each describe the outcome of each promise.")
@scope("Promise")
@val
external allSettled: array<t<'a>> => t<array<settledResultT<'a>>> = "allSettled"

@ocaml.doc("Wait until all promises have settled (each may resolve or reject).

Returns a Promise that resolves after all of the given promises is either fulfilled or rejected, with an array of objects that each describe the outcome of each promise.")
@scope("Promise")
@val
external allSettled2: ((t<'a>, t<'b>)) => t<(settledResultT<'a>, settledResultT<'b>)> = "allSettled"

@ocaml.doc("Wait until all promises have settled (each may resolve or reject).

Returns a Promise that resolves after all of the given promises is either fulfilled or rejected, with an array of objects that each describe the outcome of each promise.")
@scope("Promise")
@val
external allSettled3: ((t<'a>, t<'b>, t<'c>)) => t<(
  settledResultT<'a>,
  settledResultT<'b>,
  settledResultT<'c>,
)> = "allSettled"

@ocaml.doc("Wait until all promises have settled (each may resolve or reject).

Returns a Promise that resolves after all of the given promises is either fulfilled or rejected, with an array of objects that each describe the outcome of each promise.")
@scope("Promise")
@val
external allSettled4: ((t<'a>, t<'b>, t<'c>, t<'d>)) => t<(
  settledResultT<'a>,
  settledResultT<'b>,
  settledResultT<'c>,
  settledResultT<'d>,
)> = "allSettled"

@ocaml.doc("Wait until all promises have settled (each may resolve or reject).

Returns a Promise that resolves after all of the given promises is either fulfilled or rejected, with an array of objects that each describe the outcome of each promise.")
@scope("Promise")
@val
external allSettled5: ((t<'a>, t<'b>, t<'c>, t<'d>, t<'e>)) => t<(
  settledResultT<'a>,
  settledResultT<'b>,
  settledResultT<'c>,
  settledResultT<'d>,
  settledResultT<'e>,
)> = "allSettled"

@ocaml.doc("Wait until all promises have settled (each may resolve or reject).

Returns a Promise that resolves after all of the given promises is either fulfilled or rejected, with an array of objects that each describe the outcome of each promise.")
@scope("Promise")
@val
external allSettled6: ((t<'a>, t<'b>, t<'c>, t<'d>, t<'e>, t<'f>)) => t<(
  settledResultT<'a>,
  settledResultT<'b>,
  settledResultT<'c>,
  settledResultT<'d>,
  settledResultT<'e>,
  settledResultT<'f>,
)> = "allSettled"

// any
@ocaml.doc(
  "Takes an iterable of Promise objects and, as soon as one of the promises in the iterable fulfills, returns a single promise that resolves with the value from that promise."
)
@scope("Promise")
@val
external any: array<t<'a>> => t<array<'a>> = "any"

// race
@ocaml.doc("Wait until any of the promises is fulfilled or rejected.

If the returned promise resolves, it is resolved with the value of the first promise in the iterable that resolved.

If it rejects, it is rejected with the reason from the first promise that was rejected.")
@scope("Promise")
@val
external race: array<t<'a>> => t<'a> = "race"

//
@ocaml.doc("Returns a new `Promise` object that is rejected with the given reason.")
@scope("Promise")
@val
external reject: 'any => t<'a> = "reject"
//
@ocaml.doc(
  "Returns a new `Promise` object that is resolved with the given value. If the value is a thenable (i.e. has a then method), the returned promise will \"follow\" that thenable, adopting its eventual state; otherwise, the returned promise will be fulfilled with the value."
)
@scope("Promise")
@val
external resolve: 'a => t<'a> = "resolve"

// Instance  methods

@ocaml.doc(
  "Appends a rejection handler callback to the promise, and returns a new promise resolving to the return value of the callback if it is called, or to its original fulfillment value if the promise is instead fulfilled."
)
@send
external catch: (t<'a>, 'err => t<'b>) => t<'b> = "catch"

@ocaml.doc(
  "Appends fulfillment and rejection handlers to the promise, and returns a new promise resolving to the return value of the called handler, or to its original settled value if the promise was not handled (i.e. if the relevant handler onFulfilled or onRejected is not a function)."
)
@send
external then: (t<'a>, 'a => t<'b>) => t<'b> = "then"

@ocaml.doc(
  "Appends fulfillment and rejection handlers to the promise, and returns a new promise resolving to the return value of the called handler, or to its original settled value if the promise was not handled (i.e. if the relevant handler onFulfilled or onRejected is not a function)."
)
@send
external thenResolve: (t<'a>, 'a => 'b) => t<'b> = "then"

@ocaml.doc(
  "Appends a handler to the promise, and returns a new promise that is resolved when the original promise is resolved. The handler is called when the promise is settled, whether fulfilled or rejected."
)
@send
external finally: (t<'a>, unit => unit) => t<'a> = "finally"