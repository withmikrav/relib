@scope("Reflect") @val
external apply: ('a => 'return, option<'this>, array<'a>) => 'return = "apply"

@scope("Reflect") @val
external apply2: (('a, 'b) => 'return, option<'this>, ('a, 'b)) => 'return = "apply"

@scope("Reflect") @val
external apply3: (('a, 'b, 'c) => 'return, option<'this>, ('a, 'b, 'c)) => 'return = "apply"

@scope("Reflect") @val
external apply4: (('a, 'b, 'c, 'd) => 'return, option<'this>, ('a, 'b, 'c, 'd)) => 'return = "apply"

@scope("Reflect") @val
external apply5: (('a, 'b, 'c, 'd, 'e) => 'return, option<'this>, ('a, 'b, 'c, 'd, 'e)) => 'return =
  "apply"

@scope("Reflect") @val
external construct: ('a => 'return, array<'a>) => 'return = "construct"

@scope("Reflect") @val
external construct2: (('a, 'b) => 'return, ('a, 'b)) => 'return = "construct"

@scope("Reflect") @val
external construct3: (('a, 'b, 'c) => 'return, ('a, 'b, 'c)) => 'return = "construct"

@scope("Reflect") @val
external construct4: (('a, 'b, 'c, 'd) => 'return, ('a, 'b, 'c, 'd)) => 'return = "construct"

@scope("Reflect") @val
external construct5: (('a, 'b, 'c, 'd, 'e) => 'return, ('a, 'b, 'c, 'd, 'e)) => 'return =
  "construct"

type definePropertyAttributesT<'a> = {value: 'a}

@scope("Reflect") @val
external defineProperty: ({..}, string, definePropertyAttributesT<'a>) => bool = "defineProperty"

@scope("Reflect") @val
external deleteProperty: ({..}, string) => bool = "deleteProperty"

@scope("Reflect") @val
external get: ({..}, string) => 'a = "get"

@scope("Reflect") @val
external getOwnPropertyDescriptor: ({..}, string) => option<Object.descriptorT<'a>> =
  "getOwnPropertyDescriptor"

@scope("Reflect") @val
external has: ({..}, string) => bool = "has"

@scope("Reflect") @val
external isExtensible: {..} => bool = "isExtensible"

@scope("Reflect") @val
external ownKeys: {..} => array<string> = "ownKeys"

@scope("Reflect") @val
external preventExtensions: {..} => bool = "preventExtensions"

@scope("Reflect") @val
external set: ({..}, string, 'a) => bool = "set"
