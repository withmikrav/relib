@ocaml.doc(
  "The DataView view provides a low-level interface for reading and writing multiple number types in a binary `ArrayBuffer`, without having to care about the platform's endianness."
)
type t

type bufferT = ArrayBuffer.t

@new external make: bufferT => t = "DataView"
@new external makeWithOffset: (bufferT, ~offset: int) => t = "DataView"
@new external makeWithLength: (bufferT, ~offset: int, ~length: int) => t = "DataView"

// Instance properties
@ocaml.doc("The buffer referenced by this view.") @get
external buffer: t => bufferT = "buffer"

@ocaml.doc("The length (in bytes) of this view from the start of its buffer.") @get
external byteLength: t => int = "byteLength"

@ocaml.doc("The offset (in bytes) of this view from the start of its buffer.") @get
external byteOffset: t => int = "byteOffset"

// Instance methods
// getter

@ocaml.doc(
  "Gets a signed 16-bit integer (byte) at the specified byte offset from the start of the view."
)
@send
external getInt8: (t, ~offset: int) => int = "getInt8"

@ocaml.doc(
  "Gets an unsigned 8-bit integer (unsigned byte) at the specified byte offset from the start of the view."
)
@send
external getUint8: (t, ~offset: int) => int = "getUint8"

@ocaml.doc(
  "Gets a signed 16-bit integer (byte) at the specified byte offset from the start of the view."
)
@send
external getInt16: (t, ~offset: int) => int = "getInt16"
@ocaml.doc(
  "Gets a signed 16-bit integer (byte) at the specified byte offset from the start of the view."
)
@send
external getInt16WithLittleEndian: (t, ~offset: int, ~littleEndian: bool) => int = "getInt16"

@ocaml.doc(
  "Gets an unsigned 16-bit integer (unsigned byte) at the specified byte offset from the start of the view."
)
@send
external getUint16: (t, ~offset: int) => int = "getUint16"

@ocaml.doc(
  "Gets an unsigned 16-bit integer (unsigned byte) at the specified byte offset from the start of the view."
)
@send
external getUint16WithLittleEndian: (t, ~offset: int, ~littleEndian: bool) => int = "getUint16"

@ocaml.doc(
  "Gets a signed 32-bit integer (byte) at the specified byte offset from the start of the view."
)
@send
external getInt32: (t, ~offset: int) => int = "getInt32"

@ocaml.doc(
  "Gets a signed 32-bit integer (byte) at the specified byte offset from the start of the view."
)
@send
external getInt32WithLittleEndian: (t, ~offset: int, ~littleEndian: bool) => int = "getInt32"

@ocaml.doc(
  "Gets an unsigned 32-bit integer (unsigned byte) at the specified byte offset from the start of the view."
)
@send
external getUint32: (t, ~offset: int) => int = "getUint32"

@ocaml.doc(
  "Gets an unsigned 32-bit integer (unsigned byte) at the specified byte offset from the start of the view."
)
@send
external getUint32WithLittleEndian: (t, ~offset: int, ~littleEndian: bool) => int = "getUint32"

@ocaml.doc(
  "Gets a signed 32-bit float (float) at the specified byte offset from the start of the view."
)
@send
external getFloat32: (t, ~offset: int) => float = "getFloat32"

@ocaml.doc(
  "Gets a signed 32-bit float (float) at the specified byte offset from the start of the view."
)
@send
external getFloat32WithLittleEndian: (t, ~offset: int, ~littleEndian: bool) => float = "getFloat32"

@ocaml.doc(
  "Gets a signed 64-bit float (double) at the specified byte offset from the start of the view."
)
@send
external getFloat64: (t, ~offset: int) => float = "getFloat64"

@ocaml.doc(
  "Gets a signed 64-bit float (double) at the specified byte offset from the start of the view."
)
@send
external getFloat64WithLittleEndian: (t, ~offset: int, ~littleEndian: bool) => float = "getFloat64"

@ocaml.doc(
  "Gets a signed 64-bit integer (long long) at the specified byte offset from the start of the view."
)
@send
external getBigInt64: (t, ~offset: int) => BigInt.t = "getBigInt64"

@ocaml.doc(
  "Gets a signed 64-bit integer (long long) at the specified byte offset from the start of the view."
)
@send
external getBigInt64WithLittleEndian: (t, ~offset: int, ~littleEndian: bool) => BigInt.t =
  "getBigInt64"

@ocaml.doc(
  "Gets a unsigned 64-bit integer (unsigned long long) at the specified byte offset from the start of the view."
)
@send
external getBigUint64: (t, ~offset: int) => BigInt.t = "getBigUint64"

@ocaml.doc(
  "Gets a unsigned 64-bit integer (unsigned long long) at the specified byte offset from the start of the view."
)
@send
external getBigUint64WithLittleEndian: (t, ~offset: int, ~littleEndian: bool) => BigInt.t =
  "getBigUint64"

// setter
@ocaml.doc(
  "Stores an unsigned 8-bit integer (unsigned byte) value at the specified byte offset from the start of the view."
)
@send
external setInt8: (t, ~offset: int, ~value: int) => unit = "setInt8"

@ocaml.doc(
  "Stores a signed 8-bit integer (byte) value at the specified byte offset from the start of the view."
)
@send
external setUint8: (t, ~offset: int, ~value: int) => unit = "setUint8"

@ocaml.doc(
  "Stores a signed 16-bit integer (short) value at the specified byte offset from the start of the view."
)
@send
external setInt16: (t, ~offset: int, ~value: int) => unit = "setInt16"

@ocaml.doc(
  "Stores a signed 16-bit integer (short) value at the specified byte offset from the start of the view."
)
@send
external setInt16WithLittleEndian: (t, ~offset: int, ~value: int, ~littleEndian: bool) => unit =
  "setInt16"

@ocaml.doc(
  "Stores an unsigned 16-bit integer (unsigned short) value at the specified byte offset from the start of the view."
)
@send
external setUint16: (t, ~offset: int, ~value: int) => unit = "setUint16"

@ocaml.doc(
  "Stores an unsigned 16-bit integer (unsigned short) value at the specified byte offset from the start of the view."
)
@send
external setUint16WithLittleEndian: (t, ~offset: int, ~value: int, ~littleEndian: bool) => unit =
  "setUint16"

@ocaml.doc(
  "Stores a signed 32-bit integer (long) value at the specified byte offset from the start of the view."
)
@send
external setInt32: (t, ~offset: int, ~value: int) => unit = "setInt32"

@ocaml.doc(
  "Stores a signed 32-bit integer (long) value at the specified byte offset from the start of the view."
)
@send
external setInt32WithLittleEndian: (t, ~offset: int, ~value: int, ~littleEndian: bool) => unit =
  "setInt32"

@ocaml.doc(
  "Stores an unsigned 32-bit integer (unsigned long) value at the specified byte offset from the start of the view."
)
@send
external setUint32: (t, ~offset: int, ~value: int) => unit = "setUint32"

@ocaml.doc(
  "Stores an unsigned 32-bit integer (unsigned long) value at the specified byte offset from the start of the view."
)
@send
external setUint32WithLittleEndian: (t, ~offset: int, ~value: int, ~littleEndian: bool) => unit =
  "setUint32"

@ocaml.doc(
  "Stores a signed 32-bit float (float) value at the specified byte offset from the start of the view."
)
@send
external setFloat32: (t, ~offset: int, ~value: int) => unit = "setFloat32"

@ocaml.doc(
  "Stores a signed 32-bit float (float) value at the specified byte offset from the start of the view."
)
@send
external setFloat32WithLittleEndian: (t, ~offset: int, ~value: int, ~littleEndian: bool) => unit =
  "setFloat32"

@ocaml.doc(
  "Stores a signed 64-bit float (double) value at the specified byte offset from the start of the view."
)
@send
external setFloat64: (t, ~offset: int, ~value: int) => unit = "setFloat64"

@ocaml.doc(
  "Stores a signed 64-bit float (double) value at the specified byte offset from the start of the view."
)
@send
external setFloat64WithLittleEndian: (t, ~offset: int, ~value: int, ~littleEndian: bool) => unit =
  "setFloat64"

@ocaml.doc(
  "Stores a signed 64-bit integer (long long) value at the specified byte offset from the start of the view."
)
@send
external setBigInt64: (t, ~offset: int, ~value: int) => unit = "setBigInt64"

@ocaml.doc(
  "Stores a signed 64-bit integer (long long) value at the specified byte offset from the start of the view."
)
@send
external setBigInt64WithLittleEndian: (t, ~offset: int, ~value: int, ~littleEndian: bool) => unit =
  "setBigInt64"

@ocaml.doc(
  "Stores an unsigned 64-bit integer (unsigned long long) value at the specified byte offset from the start of the view."
)
@send
external setBigUint64: (t, ~offset: int, ~value: int) => unit = "setBigUint64"

@ocaml.doc(
  "Stores an unsigned 64-bit integer (unsigned long long) value at the specified byte offset from the start of the view."
)
@send
external setBigUint64WithLittleEndian: (t, ~offset: int, ~value: int, ~littleEndian: bool) => unit =
  "setBigUint64"
