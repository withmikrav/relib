// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function
// https://microsoft.github.io/PowerBI-JavaScript/interfaces/_node_modules_typedoc_node_modules_typescript_lib_lib_es5_d_.function.html

type t

external unsafe_fromAny: 'any => t = "%identity"

@ocaml.doc("create functions dynamically, but suffers from security and similar") @new
external unsafe_make: (~args: array<'a>, ~body: string) => t = "Function"

@ocaml.doc("create functions dynamically, but suffers from security and similar") @new
external unsafe_make2: ('arg1, 'arg2, ~body: string) => t = "Function"

@ocaml.doc("create functions dynamically, but suffers from security and similar") @new
external unsafe_make3: ('arg1, 'arg2, 'arg3, ~body: string) => t = "Function"

@ocaml.doc("create functions dynamically, but suffers from security and similar") @new
external unsafe_make4: ('arg1, 'arg2, 'arg3, 'arg4, ~body: string) => t = "Function"

@ocaml.doc("create functions dynamically, but suffers from security and similar") @new
external unsafe_make5: ('arg1, 'arg2, 'arg3, 'arg4, 'arg5, ~body: string) => t = "Function"

// Instance properties

@ocaml.doc("Specifies the number of arguments expected by the function.") @get
external length: t => int = "length"

@ocaml.doc("The name of the function.") @get external name: t => string = "name"

// Instance methods

@ocaml.doc("Calls a function and sets its `this` to the provided `thisArg`.
 Arguments can be passed as an Array object.")
@send
external apply: (t, 'thisArg, 'argsArray) => unit = "apply"

@ocaml.doc("Creates a new function which, when called, has its this set to the provided thisArg.")
@send
external bind: (t, 'thisArg, 'arg1) => unit = "bind"

@ocaml.doc("Creates a new function which, when called, has its this set to the provided thisArg.")
@send
external bind2: (t, 'thisArg, 'arg1, 'arg2) => unit = "bind"

@ocaml.doc("Creates a new function which, when called, has its this set to the provided thisArg.")
@send
external bind3: (t, 'thisArg, 'arg1, 'arg2, 'arg3) => unit = "bind"

@ocaml.doc("Creates a new function which, when called, has its this set to the provided thisArg.")
@send
external bind4: (t, 'thisArg, 'arg1, 'arg2, 'arg3, 'arg4) => unit = "bind"

@ocaml.doc("Creates a new function which, when called, has its this set to the provided thisArg.")
@send
external bind5: (t, 'thisArg, 'arg1, 'arg2, 'arg3, 'arg4, 'arg5) => unit = "bind"

@ocaml.doc(
  "Calls a function and sets its this to the provided value. Arguments can be passed as they are."
)
@send
external call: (t, 'thisArg, 'arg1) => unit = "call"

@ocaml.doc(
  "Calls a function and sets its this to the provided value. Arguments can be passed as they are."
)
@send
external call2: (t, 'thisArg, 'arg1, 'arg2) => unit = "call"

@ocaml.doc(
  "Calls a function and sets its this to the provided value. Arguments can be passed as they are."
)
@send
external call3: (t, 'thisArg, 'arg1, 'arg2, 'arg3) => unit = "call"

@ocaml.doc(
  "Calls a function and sets its this to the provided value. Arguments can be passed as they are."
)
@send
external call4: (t, 'thisArg, 'arg1, 'arg2, 'arg3, 'arg4) => unit = "call"

@ocaml.doc(
  "Calls a function and sets its this to the provided value. Arguments can be passed as they are."
)
@send
external call5: (t, 'thisArg, 'arg1, 'arg2, 'arg3, 'arg4, 'arg5) => unit = "call"

@ocaml.doc("Returns a string representing the source code of the function.") @send
external toString: (t, unit) => t = "toString"
