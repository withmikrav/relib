// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator
// https://microsoft.github.io/PowerBI-JavaScript/interfaces/_node_modules_typedoc_node_modules_typescript_lib_lib_es2015_generator_d_.generator.html

include Iterator.Make({
  type t<'a> = Js.Array2.array_like<'a>
})

@ocaml.doc("Returns the given value and finishes the generator.") @send
external return: (t<'value>, unit) => returnT<'value> = "return"

@ocaml.doc("Returns the given value and finishes the generator.") @send
external returnWithValue: (t<'value>, ~value: 'value) => returnT<'value> = "return"

@ocaml.doc(
  "Throws an error to a generator (also finishes the generator, unless caught from within that generator)."
)
@send
external throw: (t<'value>, exn) => returnT<'value> = "throw"
