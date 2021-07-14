// A TypedArray object describes an array-like view of an underlying binary data buffer.
// There is no global property named TypedArray, nor is there a directly visible
// TypedArray constructor. Instead, there are a number of different global properties,
// whose values are typed array constructors for specific element types

type t<'a> = ArrayLike.t<'a>

module Impl = (
  T: {
    type t
    type childT
  },
) => {
  type t = T.t
  type childT = T.childT

  // Instance properties

  @ocaml.doc("Returns the ArrayBuffer referenced by the typed array.") @get
  external buffer: t => ArrayBuffer.t = "buffer"

  @ocaml.doc("Returns the length (in bytes) of the typed array.") @get
  external byteLength: t => ArrayBuffer.t = "byteLength"

  @ocaml.doc("Returns the offset (in bytes) of the typed array from the start of its ArrayBuffer.")
  @get
  external byteOffset: t => ArrayBuffer.t = "byteOffset"

  @ocaml.doc("Returns the number of elements held in the typed array.") @get
  external length: t => ArrayBuffer.t = "length"

  // Instance methods

  @ocaml.doc("Copies a sequence of array elements within the array.") @send
  external copyWithin: (t, ~target: int) => t = "copyWithin"

  @ocaml.doc("Copies a sequence of array elements within the array.") @send
  external copyWithinStart: (t, ~target: int, ~start: int) => t = "copyWithin"

  @ocaml.doc("Copies a sequence of array elements within the array.") @send
  external copyWithinStartEnd: (t, ~target: int, ~start: int, ~end: int) => t = "copyWithin"

  @ocaml.doc("Returns a `Iterator` that contains the key/value pairs for each index in the array")
  @send
  external entries: t => Iterator.t<(int, childT)> = "entries"

  @ocaml.doc("Returns true if every element in this array satisfies the testing function.") @send
  external every: (t, childT => bool) => bool = "every"

  @ocaml.doc("Fills all the elements of an array with a value.")
  external fillAll: (t, childT) => t = "fill"

  @ocaml.doc("Fills all the elements of an array from a start index to an end index with a value.")
  external fillFromStart: (t, ~value: childT, ~start: int) => t = "fill"

  @ocaml.doc("Fills all the elements of an array from a start index to an end index with a value.")
  external fill: (t, ~value: childT, ~start: int, ~end: int) => t = "fill"

  @ocaml.doc(
    "Creates a new array with all of the elements of this array for which the provided filtering function returns `true`."
  )
  @send
  external filter: (t, childT => bool) => t = "filter"

  @ocaml.doc(
    "Creates a new array with all of the elements of this array for which the provided filtering function returns `true`."
  )
  @send
  external filterWithIndex: (t, (childT, int) => bool) => t = "filter"

  @ocaml.doc(
    "Creates a new array with all of the elements of this array for which the provided filtering function returns `true`."
  )
  @send
  external filterWithSource: (t, (childT, int, t) => bool) => t = "filter"

  @ocaml.doc(
    "Returns the found element in the array, if some element in the array satisfies the testing function."
  )
  @send
  external find: (t, childT => bool) => option<childT> = "find"

  @ocaml.doc(
    "Returns the found index in the array, if an element in the array satisfies the testing function, or -1 if not found."
  )
  @send
  external findIndex: (t, childT => bool) => int = "findIndex"

  @ocaml.doc("Calls a function for each element in the array.") @send
  external forEach: (t, childT => unit) => unit = "forEach"

  @ocaml.doc("Determines whether the array contains a value.") @send
  external includes: (t, childT) => bool = "includes"

  @ocaml.doc(
    "Returns the first (least) index of an element within the array equal to an element, or -1 if none is found."
  )
  @send
  external indexOf: (t, childT) => int = "indexOf"

  @ocaml.doc(
    "Returns the first (least) index of an element within the array equal to an element, or -1 if none is found."
  )
  @send
  external indexOfFrom: (t, childT, ~from: int) => int = "indexOf"

  @ocaml.doc("Joins all elements of an array into a string.") @send
  external join: (t, unit) => string = "join"

  @ocaml.doc("Joins all elements of an array into a string.") @send
  external joinWithSeparator: (t, ~separator: string) => string = "join"

  @ocaml.doc("Returns a `Iterator` that contains the keys for each index in the array.") @send
  external keys: t => Iterator.t<int> = "keys"

  @ocaml.doc(
    "Returns the last (greatest) index of an element within the array equal to an element, or -1 if none is found."
  )
  @send
  external lastIndexOf: (t, childT) => int = "lastIndexOf"

  @ocaml.doc(
    "Returns the last (greatest) index of an element within the array equal to an element, or -1 if none is found."
  )
  @send
  external lastIndexOfFrom: (t, childT, ~from: int) => int = "lastIndexOf"

  @ocaml.doc(
    "Creates a new array populated with the results of calling a provided function on every element in the calling array."
  )
  @send
  external map: (t, childT => 'b) => array<'b> = "map"

  @ocaml.doc(
    "Creates a new array populated with the results of calling a provided function on every element in the calling array."
  )
  @send
  external mapWithIndex: (t, (childT, int) => 'b) => array<'b> = "map"

  @ocaml.doc(
    "Creates a new array populated with the results of calling a provided function on every element in the calling array."
  )
  @send
  external mapWithSource: (t, (childT, int, t) => 'b) => array<'b> = "map"

  @ocaml.doc(
    "Apply a function against an accumulator and each value of the array (from left-to-right) as to reduce it to a single value."
  )
  @send
  external reduce: (t, (childT, childT) => 'b, 'b) => 'b = "reduce"

  @ocaml.doc(
    "Apply a function against an accumulator and each value of the array (from left-to-right) as to reduce it to a single value."
  )
  @send
  external reduceWithIndex: (t, ('a, 'a, int) => 'b, 'b) => 'b = "reduce"

  @ocaml.doc(
    "Apply a function against an accumulator and each value of the array (from left-to-right) as to reduce it to a single value."
  )
  @send
  external reduceWithSource: (t, ('a, 'a, int, t) => 'b) => 'b = "reduce"

  @ocaml.doc(
    "Apply a function against an accumulator and each value of the array (from right-to-left) as to reduce it to a single value."
  )
  @send
  external reduceRight: (t, ('a, 'a) => 'b, 'b) => 'b = "reduceRight"

  @ocaml.doc(
    "Apply a function against an accumulator and each value of the array (from right-to-left) as to reduce it to a single value."
  )
  @send
  external reduceRightWithIndex: (t, ('a, 'a, int) => 'b, 'b) => 'b = "reduceRight"

  @ocaml.doc(
    "Apply a function against an accumulator and each value of the array (from right-to-left) as to reduce it to a single value."
  )
  @send
  external reduceRightWithSource: (t, ('a, 'a, int, t) => 'b, 'b) => 'b = "reduceRight"

  @ocaml.doc(
    "Reverses the order of the elements of an array in place. (First becomes the last, last becomes first.)"
  )
  @send
  external reverse: (t, unit) => t = "reverse"

  @ocaml.doc(
    "Stores multiple values in the typed array, reading input values from a specified array."
  )
  @send
  external set: (t, array<childT>) => t = "set"

  @ocaml.doc(
    "Stores multiple values in the typed array, reading input values from a specified array."
  )
  @send
  external setWithOffset: (t, array<childT>, ~offset: int) => t = "set"

  @ocaml.doc(
    "Stores multiple values in the typed array, reading input values from a specified array."
  )
  @send
  external setArrayBuffer: (t, ArrayBuffer.t) => t = "set"

  @ocaml.doc(
    "Stores multiple values in the typed array, reading input values from a specified array."
  )
  @send
  external setArrayBufferWithOffset: (t, ArrayBuffer.t, ~offset: int) => t = "set"

  @ocaml.doc("Extracts a section of the calling array and returns a new array.") @send
  external slice: (t, ~start: int, ~end: int) => t = "slice"

  @ocaml.doc("Extracts a section of the calling array and returns a new array.") @send
  external sliceFrom: (t, int) => t = "slice"

  @ocaml.doc(
    "Returns `true` if at least one element in this array satisfies the provided testing function."
  )
  @send
  external some: (t, 'a => bool) => bool = "some"

  @ocaml.doc(
    "Returns `true` if at least one element in this array satisfies the provided testing function."
  )
  @send
  external someWithIndex: (t, ('a, int) => bool) => bool = "some"

  @ocaml.doc(
    "Returns `true` if at least one element in this array satisfies the provided testing function."
  )
  @send
  external someWithSource: (t, ('a, int, t) => bool) => bool = "some"

  @ocaml.doc("Sorts the elements of an array in place and returns the array.") @send
  external sort: (t, unit) => t = "sort"

  @ocaml.doc("Sorts the elements of an array in place and returns the array.") @send
  external sortWith: (t, (childT, childT) => int) => t = "sort"

  @ocaml.doc("Removes elements from an array.") @send
  external subarray: (t, ~start: int, ~end: int) => t = "subarray"

  @ocaml.doc("Removes elements from an array.") @send
  external subarrayFromStart: (t, int) => t = "subarray"

  @ocaml.doc("Returns a `Iterator` that contains the values for each index in the array.") @send
  external values: t => Iterator.t<childT> = "values"

  @ocaml.doc("Returns a localized string representing the array and its elements.") @send
  external toLocaleString: (t, unit) => string = "toLocaleString"

  @ocaml.doc("Returns a localized string representing the array and its elements.") @send
  external toLocaleStringWithLocales: (t, string) => string = "toLocaleString"

  @ocaml.doc("Returns a localized string representing the array and its elements.") @send
  external toLocaleStringWithNumberOptions: (t, string, Intl.NumberFormat.optionsT) => string =
    "toLocaleString"

  @ocaml.doc("Returns a localized string representing the array and its elements.") @send
  external toLocaleStringWithDateOptions: (t, string, Intl.DateTimeFormat.optionsT) => string =
    "toLocaleString"

  @ocaml.doc("Returns a string representing the array and its elements.") @send
  external toString: t => string = "toString"
}
