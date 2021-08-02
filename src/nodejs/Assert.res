// https://nodejs.org/docs/latest-v14.x/api/assert.html
// https://github.com/DefinitelyTyped/DefinitelyTyped/blob/master/types/node/v14/assert.d.ts

module AssertionError = {
  include Error.Impl({
    type t
    let errorName = "AssertionError"
  })

  @ocaml.doc("Set to the `actual` argument for methods such as `assert.strictEqual()`") @get
  external actual: t => 'a = "actual"

  @ocaml.doc("Set to the `expected` value for methods such as `assert.strictEqual().`") @get
  external expected: t => 'a = "expected"

  @ocaml.doc("Indicates if the message was auto-generated (`true`) or not.") @get
  external generatedMessage: t => 'a = "operator"

  @ocaml.doc("Value is always `ERR_ASSERTION` to show that the error is an assertion error.") @get
  external code: t => 'a = "operator"

  @ocaml.doc("Set to the passed in operator value.") @get
  external operator: t => 'a = "operator"

  @ocaml.doc("Make this with `options`")
  type optionsT

  @ocaml.doc("- `message` If provided, the error message is set to this value.
- `actual` The actual property on the error instance.
- `expected` The expected property on the error instance.
- `operator` The operator property on the error instance.
- `stackStartFn` If provided, the generated stack trace omits frames before this function.

https://nodejs.org/docs/latest-v14.x/api/assert.html#assert_new_assert_assertionerror_options
")
  @obj
  external options: (
    ~message: string=?,
    ~actual: 'a,
    ~expected: 'a,
    ~operator: string,
    ~stackStartFn: 'fn=?,
    unit,
  ) => optionsT = ""

  @ocaml.doc("Indicates the failure of an assertion. All errors thrown by the assert module will be instances of the `AssertionError` class.

A subclass of `Error` that indicates the failure of an assertion.

https://nodejs.org/docs/latest-v14.x/api/assert.html#assert_class_assert_assertionerror
")
  @module("assert")
  @new
  external make: optionsT => t = "AssertionError"
}

module CallTracker = {
  type t

  @ocaml.doc(
    "Creates a new `CallTracker` object which can be used to track if functions were called a specific number of times. The `tracker.verify()` must be called for the verification to take place. The usual pattern would be to call it in a `process.on('exit')` handler."
  )
  @module("assert")
  @new
  external make: unit => t = "CallTracker"

  type callTrackerReportInformationT<'stack> = {
    //
    message: string,
    actual: int,
    expected: int,
    operator: string,
    stack: 'stack,
  }

  type func1T<'fn, 'arg1> = 'arg1 => 'fn
  type func2T<'fn, 'arg1, 'arg2> = ('arg1, 'arg2) => 'fn

  @ocaml.doc("The wrapper function is expected to be called exactly exact times. If the function has not been called exactly exact times when `tracker.verify()` is called, then `tracker.verify()` will throw an error.

https://nodejs.org/docs/latest-v14.x/api/assert.html#assert_tracker_calls_fn_exact")
  @send
  external callsFn: (t, 'fn) => func1T<'fn, 'fn> = "calls"
  @ocaml.doc("The wrapper function is expected to be called exactly exact times. If the function has not been called exactly exact times when `tracker.verify()` is called, then `tracker.verify()` will throw an error.
    
https://nodejs.org/docs/latest-v14.x/api/assert.html#assert_tracker_calls_fn_exact")
  @send
  external callsExact: (t, int) => func1T<'fn, unit> = "calls"
  @ocaml.doc("The wrapper function is expected to be called exactly exact times. If the function has not been called exactly exact times when `tracker.verify()` is called, then `tracker.verify()` will throw an error.
    
https://nodejs.org/docs/latest-v14.x/api/assert.html#assert_tracker_calls_fn_exact")
  @send
  external callsFnExact: (t, 'fn, int) => func2T<'fn, 'fn, int> = "calls"

  @ocaml.doc(
    "The arrays contains information about the expected and actual number of calls of the functions that have not been called the expected number of times."
  )
  @send
  external report: (t, unit) => array<callTrackerReportInformationT<'stack>> = "report"

  @ocaml.doc("Iterates through the list of functions passed to `tracker.calls()` and will throw an error for functions that have not been called the expected number of times.

https://nodejs.org/api/assert.html#assert_tracker_verify")
  @send
  external verify: (t, unit) => unit = "verify"
}

//
@ocaml.doc("Tests for deep equality between the `actual` and `expected` parameters. \"Deep\" equality means that the enumerable \"own\" properties of child objects are recursively evaluated also by the following rules.
  
https://nodejs.org/docs/latest-v14.x/api/assert.html#assert_assert_deepstrictequal_actual_expected_message")
@module("assert")
external deepStrictEqual: ('a, 'a) => unit = "deepStrictEqual"
@ocaml.doc("Tests for deep equality between the `actual` and `expected` parameters. \"Deep\" equality means that the enumerable \"own\" properties of child objects are recursively evaluated also by the following rules.

https://nodejs.org/docs/latest-v14.x/api/assert.html#assert_assert_deepstrictequal_actual_expected_message")
@module("assert")
external deepStrictEqualWithMessage: ('a, 'a, ~message: string) => unit = "deepStrictEqual"

@ocaml.doc("Tests for deep equality between the `actual` and `expected` parameters. \"Deep\" equality means that the enumerable \"own\" properties of child objects are recursively evaluated also by the following rules.

https://nodejs.org/docs/latest-v14.x/api/assert.html#assert_assert_deepstrictequal_actual_expected_message")
@module("assert")
external deepStrictEqualWithError: ('a, 'a, ~error: Error.t) => unit = "deepStrictEqual"

//
@ocaml.doc("Expects the string input not to match the regular expression.

https://nodejs.org/api/assert.html#assert_assert_doesnotmatch_string_regexp_message")
@module("assert")
external doesNotMatch: (string, Js.Re.t) => unit = "doesNotMatch"

@ocaml.doc("Expects the string input not to match the regular expression.

https://nodejs.org/api/assert.html#assert_assert_doesnotmatch_string_regexp_message")
@module("assert")
external doesNotMatchWithMessage: (string, Js.Re.t, ~message: string) => unit = "doesNotMatch"

@ocaml.doc("Expects the string input not to match the regular expression.

https://nodejs.org/api/assert.html#assert_assert_doesnotmatch_string_regexp_message")
@module("assert")
external doesNotMatchWithError: (string, Js.Re.t, ~error: Error.t) => unit = "doesNotMatch"

//
@ocaml.doc("Awaits the asyncFn promise or, if asyncFn is a function, immediately calls the function and awaits the returned promise to complete. It will then check that the promise is not rejected.
  
https://nodejs.org/api/assert.html#assert_assert_doesnotreject_asyncfn_error_message")
@module("assert")
external doesNotReject: Js.Promise.t<'a> => Js.Promise.t<'a> = "doesNotReject"

@ocaml.doc("Awaits the asyncFn promise or, if asyncFn is a function, immediately calls the function and awaits the returned promise to complete. It will then check that the promise is not rejected.
  
https://nodejs.org/api/assert.html#assert_assert_doesnotreject_asyncfn_error_message")
@module("assert")
external doesNotRejectWithMessage: (Js.Promise.t<'a>, ~message: string) => Js.Promise.t<'a> =
  "doesNotReject"

@ocaml.doc("Awaits the asyncFn promise or, if asyncFn is a function, immediately calls the function and awaits the returned promise to complete. It will then check that the promise is not rejected.
  
https://nodejs.org/api/assert.html#assert_assert_doesnotreject_asyncfn_error_message")
@module("assert")
external doesNotRejectWithError: (Js.Promise.t<'a>, ~error: Error.t) => Js.Promise.t<'a> =
  "doesNotReject"

@ocaml.doc("Awaits the asyncFn promise or, if asyncFn is a function, immediately calls the function and awaits the returned promise to complete. It will then check that the promise is not rejected.
  
https://nodejs.org/api/assert.html#assert_assert_doesnotreject_asyncfn_error_message")
@module("assert")
external doesNotRejectWithRegExp: (Js.Promise.t<'a>, ~regExp: Js.Re.t) => Js.Promise.t<'a> =
  "doesNotReject"

//

@ocaml.doc("Asserts that the function fn does not throw an error.

https://nodejs.org/api/assert.html#assert_assert_doesnotthrow_fn_error_message")
@module("assert")
external doesNotThrow: 'a => unit = "doesNotThrow"

@ocaml.doc("Asserts that the function fn does not throw an error.

https://nodejs.org/api/assert.html#assert_assert_doesnotthrow_fn_error_message")
@module("assert")
external doesNotThrowWithMessage: ('a, ~message: string) => unit = "doesNotThrow"

@ocaml.doc("Asserts that the function fn does not throw an error.

https://nodejs.org/api/assert.html#assert_assert_doesnotthrow_fn_error_message")
@module("assert")
external doesNotThrowWithError: ('a, ~error: Error.t) => unit = "doesNotThrow"

@ocaml.doc("Asserts that the function fn does not throw an error.

https://nodejs.org/api/assert.html#assert_assert_doesnotthrow_fn_error_message")
@module("assert")
external doesNotThrowWithRegExp: ('a, ~regExp: Js.Re.t) => unit = "doesNotThrow"

//

@ocaml.doc("Throws an `AssertionError` with the provided error message or a default error message. If the message parameter is an instance of an Error then it will be thrown instead of the `AssertionError`.
  
https://nodejs.org/api/assert.html#assert_assert_fail_message")
@module("assert")
external fail: unit => unit = "fail"

@ocaml.doc("Throws an `AssertionError` with the provided error message or a default error message. If the message parameter is an instance of an Error then it will be thrown instead of the `AssertionError`.
  
https://nodejs.org/api/assert.html#assert_assert_fail_message")
@module("assert")
external failWithMessage: (~message: string) => unit = "fail"

@ocaml.doc("Throws an `AssertionError` with the provided error message or a default error message. If the message parameter is an instance of an Error then it will be thrown instead of the `AssertionError`.
  
https://nodejs.org/api/assert.html#assert_assert_fail_message")
@module("assert")
external failWithError: (~error: Error.t) => unit = "fail"

//

@ocaml.doc("Throws `value` if `value` is not `undefined` or `null`. This is useful when testing the `error` argument in callbacks. The stack trace contains all frames from the error passed to `ifError()` including the potential new frames for `ifError()` itself.
  
https://nodejs.org/api/assert.html#assert_assert_iferror_value")
@module("assert")
external ifError: 'a => 'a = "fail"

//

@ocaml.doc("Expects the string input to match the regular expression.

https://nodejs.org/api/assert.html#assert_assert_match_string_regexp_message")
@module("assert")
external match: (string, Js.Re.t) => unit = "match"

@ocaml.doc("Expects the string input to match the regular expression.

https://nodejs.org/api/assert.html#assert_assert_match_string_regexp_message")
@module("assert")
external matchWithMessage: (string, Js.Re.t, ~message: string) => unit = "match"

@ocaml.doc("Expects the string input to match the regular expression.

https://nodejs.org/api/assert.html#assert_assert_match_string_regexp_message")
@module("assert")
external matchWithError: (string, Js.Re.t, ~error: Error.t) => unit = "match"

//

@ocaml.doc("Tests for deep strict inequality. Opposite of `assert.deepStrictEqual().`

https://nodejs.org/api/assert.html#assert_assert_notdeepstrictequal_actual_expected_message")
@module("assert")
external notDeepStrictEqual: ('a, 'a) => unit = "notDeepStrictEqual"

@ocaml.doc("Tests for deep strict inequality. Opposite of `assert.deepStrictEqual().`

https://nodejs.org/api/assert.html#assert_assert_notdeepstrictequal_actual_expected_message")
@module("assert")
external notDeepStrictEqualWithMessage: ('a, 'a, ~message: string) => unit = "notDeepStrictEqual"

@ocaml.doc("Tests for deep strict inequality. Opposite of `assert.deepStrictEqual().`

https://nodejs.org/api/assert.html#assert_assert_notdeepstrictequal_actual_expected_message")
@module("assert")
external notDeepStrictEqualWithError: ('a, 'a, ~error: Error.t) => unit = "notDeepStrictEqual"

//

@ocaml.doc("Tests strict inequality between the `actual` and `expected` parameters as determined by the `SameValue Comparison.`
  
https://nodejs.org/api/assert.html#assert_assert_notstrictequal_actual_expected_message")
@module("assert")
external notStrictEqual: ('a, 'a) => unit = "notStrictEqual"

@ocaml.doc("Tests strict inequality between the `actual` and `expected` parameters as determined by the `SameValue Comparison.`
  
https://nodejs.org/api/assert.html#assert_assert_notstrictequal_actual_expected_message")
@module("assert")
external notStrictEqualWithMessage: ('a, 'a, ~message: string) => unit = "notStrictEqual"

@ocaml.doc("Tests strict inequality between the `actual` and `expected` parameters as determined by the `SameValue Comparison.`
  
https://nodejs.org/api/assert.html#assert_assert_notstrictequal_actual_expected_message")
@module("assert")
external notStrictEqualWithError: ('a, 'a, ~error: Error.t) => unit = "notStrictEqual"

//

@ocaml.doc("Tests if value is truthy. It is equivalent to `assert.equal(!!value, true, message).`

https://nodejs.org/api/assert.html#assert_assert_ok_value_message")
@module("assert")
external ok: ('a, 'a) => unit = "ok"

@ocaml.doc("Tests if value is truthy. It is equivalent to `assert.equal(!!value, true, message).`

https://nodejs.org/api/assert.html#assert_assert_ok_value_message")
@module("assert")
external okWithMessage: ('a, 'a, ~message: string) => unit = "ok"

@ocaml.doc("Tests if value is truthy. It is equivalent to `assert.equal(!!value, true, message).`

https://nodejs.org/api/assert.html#assert_assert_ok_value_message")
@module("assert")
external okWithError: ('a, 'a, ~error: Error.t) => unit = "ok"

//

@ocaml.doc("Awaits the asyncFn promise, immediately calls the function and awaits the returned promise to complete. It will then check that the promise is rejected.
  
https://nodejs.org/api/assert.html#assert_assert_rejects_asyncfn_error_message")
@module("assert")
external rejects: Js.Promise.t<'a> => Js.Promise.t<'a> = "rejects"

@ocaml.doc("Awaits the asyncFn promise, immediately calls the function and awaits the returned promise to complete. It will then check that the promise is rejected.
  
https://nodejs.org/api/assert.html#assert_assert_rejects_asyncfn_error_message")
@module("assert")
external rejectsWithMessage: (Js.Promise.t<'a>, ~message: string) => Js.Promise.t<'a> = "rejects"

@ocaml.doc("Awaits the asyncFn promise, immediately calls the function and awaits the returned promise to complete. It will then check that the promise is rejected.
  
https://nodejs.org/api/assert.html#assert_assert_rejects_asyncfn_error_message")
@module("assert")
external rejectsWithError: (Js.Promise.t<'a>, ~error: Error.t) => Js.Promise.t<'a> = "rejects"

@ocaml.doc("Awaits the asyncFn promise, immediately calls the function and awaits the returned promise to complete. It will then check that the promise is rejected.
  
https://nodejs.org/api/assert.html#assert_assert_rejects_asyncfn_error_message")
@module("assert")
external rejectsWithRegExp: (Js.Promise.t<'a>, ~regExp: Js.Re.t) => Js.Promise.t<'a> = "rejects"

@ocaml.doc("Awaits the asyncFn promise, immediately calls the function and awaits the returned promise to complete. It will then check that the promise is rejected.
  
https://nodejs.org/api/assert.html#assert_assert_rejects_asyncfn_error_message")
@module("assert")
external rejectsWithObject: (Js.Promise.t<'a>, ~object: {..}) => Js.Promise.t<'a> = "rejects"

//

@ocaml.doc("Tests strict equality between the `actual` and `expected` parameters as determined by the `SameValue Comparison.`

https://nodejs.org/api/assert.html#assert_assert_strictequal_actual_expected_message")
@module("assert")
external strictEqual: ('a, 'a) => unit = "strictEqual"

@ocaml.doc("Tests strict equality between the `actual` and `expected` parameters as determined by the `SameValue Comparison.`

https://nodejs.org/api/assert.html#assert_assert_strictequal_actual_expected_message")
@module("assert")
external strictEqualWithMessage: ('a, 'a, ~message: string) => unit = "strictEqual"

@ocaml.doc("Tests strict equality between the `actual` and `expected` parameters as determined by the `SameValue Comparison.`

https://nodejs.org/api/assert.html#assert_assert_strictequal_actual_expected_message")
@module("assert")
external strictEqualWithError: ('a, 'a, ~error: Error.t) => unit = "strictEqual"

//

@ocaml.doc("Expects the function fn to throw an error.

https://nodejs.org/api/assert.html#assert_assert_throws_fn_error_message")
@module("assert")
external throw: 'a => Js.Promise.t<'a> = "throw"

@ocaml.doc("Expects the function fn to throw an error.

https://nodejs.org/api/assert.html#assert_assert_throws_fn_error_message")
@module("assert")
external throwWithMessage: ('a, ~message: string) => Js.Promise.t<'a> = "throw"

@ocaml.doc("Expects the function fn to throw an error.

https://nodejs.org/api/assert.html#assert_assert_throws_fn_error_message")
@module("assert")
external throwWithError: ('a, ~error: Error.t) => Js.Promise.t<'a> = "throw"

@ocaml.doc("Expects the function fn to throw an error.

https://nodejs.org/api/assert.html#assert_assert_throws_fn_error_message")
@module("assert")
external throwWithRegExp: ('a, ~regExp: Js.Re.t) => Js.Promise.t<'a> = "throw"

@ocaml.doc("Expects the function fn to throw an error.

https://nodejs.org/api/assert.html#assert_assert_throws_fn_error_message")
@module("assert")
external throwWithObject: ('a, ~object: {..}) => Js.Promise.t<'a> = "throw"
