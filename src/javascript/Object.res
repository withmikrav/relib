@new external make: 'any => {..} = "Object"
@new external makeEmpty: unit => {..} = "Object"

// Static methods

@ocaml.doc(
  "Copies the values of all enumerable own properties from one source objects to a target object."
)
@scope("Object")
@val
external assign: ({..}, {..}) => {..} = "assign"

@ocaml.doc(
  "Copies the values of all enumerable own properties from one or more source objects to a target object."
)
@scope("Object")
@val
@variadic
external assignMany: ({..}, array<{..}>) => {..} = "assign"

@ocaml.doc("Creates a new object with the specified prototype object.") @scope("Object") @val
external create: {..} => {..} = "create"

@ocaml.doc("Creates a new object with the specified prototype object and properties.")
@scope("Object")
@val
external createWithProperties: ({..}, ~properties: {..}) => {..} = "create"

type descriptorT<'any> = {
  configurable: option<bool>,
  enumerable: option<bool>,
  value: option<'any>,
  writebale: option<bool>,
}
@obj
external makeDescriptor: (
  ~configurable: bool=?,
  ~enumerable: bool=?,
  ~value: 'any=?,
  ~writebale: bool=?,
  unit,
) => descriptorT<'any> = ""

@ocaml.doc("Adds the named property described by a given descriptor to an object.")
@scope("Object")
@val
external defineProperty: ({..}, ~prop: string, ~descriptor: descriptorT<'a>) => {..} =
  "defineProperty"

@ocaml.doc("Adds the named properties described by the given descriptors to an object.")
@scope("Object")
@val
external defineProperties: ({..}, Dict.t<descriptorT<'a>>) => {..} = "defineProperties"

@ocaml.doc(
  "Returns an array containing all of the (key, value) pairs of a given object's own enumerable string properties."
)
@scope("Object")
@val
external entries: {..} => array<(string, 'a)> = "entries"

@ocaml.doc("Freezes an object. Other code cannot delete or change its properties.")
@scope("Object")
@val
external freeze: {..} => {..} = "freeze"

@ocaml.doc(
  "Returns a new object from an array of (key, value) pairs. (This is the reverse of `Object.entries`)."
)
@scope("Object")
@val
external fromEntries: array<(string, 'a)> => {..} = "fromEntries"

@ocaml.doc("Returns a property descriptor for a named property on an object.") @scope("Object") @val
external getOwnPropertyDescriptor: {..} => descriptorT<'a> = "getOwnPropertyDescriptor"

@ocaml.doc("Returns an object containing all own property descriptors for an object.")
@scope("Object")
@val
external getOwnPropertyDescriptors: {..} => Dict.t<descriptorT<'a>> = "getOwnPropertyDescriptors"

@ocaml.doc(
  "Returns an array containing the names of all of the given object's own enumerable and non-enumerable properties."
)
@scope("Object")
@val
external getOwnPropertyNames: {..} => array<string> = "getOwnPropertyNames"

@ocaml.doc("Returns an array of all symbol properties found directly upon a given object.")
@scope("Object")
@val
external getOwnPropertySymbols: {..} => array<Symbol.t> = "getOwnPropertySymbols"

@ocaml.doc("Compares if two values are the same value.") @scope("Object") @val
external is: ({..}, {..}) => bool = "is"

@ocaml.doc("Determines if extending of an object is allowed.") @scope("Object") @val
external isExtensible: {..} => bool = "isExtensible"

@ocaml.doc("Determines if an object was frozen.") @scope("Object") @val
external isFrozen: {..} => bool = "isFrozen"

@ocaml.doc("Determines if an object is sealed.") @scope("Object") @val
external isSealed: {..} => bool = "isSealed"

@ocaml.doc(
  "Returns an array containing the names of all of the given object's own enumerable string properties."
)
@scope("Object")
@val
external keys: {..} => array<string> = "keys"

@ocaml.doc("Prevents any extensions of an object.") @scope("Object") @val
external preventExtensions: {..} => {..} = "preventExtensions"

@ocaml.doc("Prevents other code from deleting properties of an object.") @scope("Object") @val
external seal: {..} => {..} = "seal"

@ocaml.doc(
  "Returns an array containing the values that correspond to all of a given object's own enumerable string properties."
)
@scope("Object")
@val
external values: {..} => array<'a> = "values"

// Instance methods

@ocaml.doc(
  "Returns a boolean indicating whether an object contains the specified property as a direct property of that object and not inherited through the prototype chain."
)
@send
external hasOwnProperty: ({..}, string) => bool = "hasOwnProperty"

@ocaml.doc("Returns a string representation of the object.") @send
external toLocaleString: ({..}, unit) => string = "toLocaleString"

@ocaml.doc("Returns a string representation of the object.") @send
external toString: ({..}, unit) => string = "toString"

@ocaml.doc("Returns the primitive value of the specified object.") @send
external valueOf: ({..}, unit) => {..} = "valueOf"
