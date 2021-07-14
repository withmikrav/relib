type t

type handlerT<'source>

@obj
external makeHandler: (
  ~apply: ('source, option<'this>, 'args) => 'return=?,
  ~construct: ('source, 'args) => 'return=?,
  ~get: ('source, string) => 'a=?,
  ~defineProperty: ('source, string, Reflect.definePropertyAttributesT<'a>) => bool=?,
  ~deleteProperty: ('source, string) => bool=?,
  ~get: ('source, string) => 'a=?,
  ~getOwnPropertyDescriptor: ('source, string) => option<Object.descriptorT<'a>>=?,
  ~has: ('source, string) => bool=?,
  ~isExtensible: 'source => bool=?,
  ~ownKeys: 'source => array<string>=?,
  ~preventExtensions: 'source => bool=?,
  ~set: ('source, string, 'a) => bool=?,
  unit,
) => handlerT<'source> = ""

@new
external make: ('source, handlerT<'source>) => t = "Proxy"

type revocableProxyT = {
  proxy: t,
  revoke: unit => unit,
}

@scope("Proxy") @val
external makeRevocable: ('source, handlerT<'source>) => revocableProxyT = "revocable"
