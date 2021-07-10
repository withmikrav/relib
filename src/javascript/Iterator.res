// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#the_iterator_protocol
// https://microsoft.github.io/PowerBI-JavaScript/interfaces/_node_modules_typedoc_node_modules_typescript_lib_lib_es2015_iterable_d_.iterator.html

module Impl = (
  T: {
    type t<'a>
  },
) => {
  type t<'a> = T.t<'a>

  @ocaml.doc("#### `value`
Any JavaScript value returned by the iterator. Can be omitted when done is true.
  
#### `done` 
Has the value `false` if the iterator was able to produce the next value in the sequence. (This is equivalent to not specifying the `done` property altogether.)

Has the value `true` if the iterator has completed its sequence. In this case, `value` optionally specifies the return value of the iterator.")
  type returnT<'value> = {
    value: option<'value>,
    done: bool,
  }

  @ocaml.doc("Returns a value yielded by the yield expression.") @send
  external next: (t<'value>, unit) => returnT<'value> = "next"

  @ocaml.doc("Returns a value yielded by the yield expression.") @send
  external nextWithValue: (t<'value>, ~value: 'value) => returnT<'value> = "next"
}

include Impl({
  type t<'a> = Js.Array2.array_like<'a>
})
