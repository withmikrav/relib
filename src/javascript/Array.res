@ocaml.doc(
  "The JavaScript Array class is a global object that is used in the construction of arrays; which are high-level, list-like objects."
)
type t<'a> = array<'a>

@scope("Array") @val external fromIterator: Iterator.t<'a> => t<'a> = "from"
@scope("Array") @val external isArray: 'any => bool = "isArray"

@ocaml.doc("Reflects the number of elements in an array.") @get
external length: t<'a> => int = "length"

@ocaml.doc("Returns a new array that is this array joined with other array") @send
external concat: (t<'a>, t<'a>) => t<'a> = "concat"

@ocaml.doc("To merge two or more arrays") @send @variadic
external concatMany: (t<'a>, array<t<'a>>) => t<'a> = "concat"

@ocaml.doc("Copies a sequence of array elements within the array.") @send
external copyWithin: (t<'a>, ~target: int) => t<'a> = "copyWithin"

@ocaml.doc("Copies a sequence of array elements within the array.") @send
external copyWithinStart: (t<'a>, ~target: int, ~start: int) => t<'a> = "copyWithin"

@ocaml.doc("Copies a sequence of array elements within the array.") @send
external copyWithinStartEnd: (t<'a>, ~target: int, ~start: int, ~end: int) => t<'a> = "copyWithin"

@ocaml.doc("Returns a `Iterator` that contains the key/value pairs for each index in the array")
@send
external entries: t<'a> => Iterator.t<(int, 'a)> = "entries"

@ocaml.doc("Returns true if every element in this array satisfies the testing function.") @send
external every: (t<'a>, 'a => bool) => bool = "every"

@ocaml.doc("Fills all the elements of an array with a value.")
external fillAll: (t<'a>, int) => t<'a> = "fill"

@ocaml.doc("Fills all the elements of an array from a start index to an end index with a value.")
external fillFromStart: (t<'a>, ~value: 'a, ~start: int) => t<'a> = "fill"

@ocaml.doc("Fills all the elements of an array from a start index to an end index with a value.")
external fill: (t<'a>, ~value: 'a, ~start: int, ~end: int) => t<'a> = "fill"

@ocaml.doc(
  "Returns the found element in the array, if some element in the array satisfies the testing function."
)
@send
external find: (t<'a>, 'a => bool) => option<'a> = "find"

@ocaml.doc(
  "Returns the found index in the array, if an element in the array satisfies the testing function, or -1 if not found."
)
@send
external findIndex: (t<'a>, 'a => bool) => int = "findIndex"

@ocaml.doc("Calls a function for each element in the array.") @send
external forEach: (t<'a>, 'a => unit) => unit = "forEach"

@ocaml.doc("Determines whether the array contains a value.") @send
external includes: (t<'a>, 'a) => bool = "includes"

@ocaml.doc(
  "Returns the first (least) index of an element within the array equal to an element, or -1 if none is found."
)
@send
external indexOf: (t<'a>, 'a) => int = "indexOf"

@ocaml.doc(
  "Returns the first (least) index of an element within the array equal to an element, or -1 if none is found."
)
@send
external indexOfFrom: (t<'a>, 'a, ~from: int) => int = "indexOf"

@ocaml.doc("Joins all elements of an array into a string.") @send
external join: (t<'a>, unit) => string = "join"

@ocaml.doc("Joins all elements of an array into a string.") @send
external joinWithSeparator: (t<'a>, ~separator: string) => string = "join"

@ocaml.doc("Returns a `Iterator` that contains the keys for each index in the array.") @send
external keys: t<'a> => Iterator.t<int> = "keys"

@ocaml.doc(
  "Returns the last (greatest) index of an element within the array equal to an element, or -1 if none is found."
)
@send
external lastIndexOf: (t<'a>, 'a) => int = "lastIndexOf"

@ocaml.doc(
  "Returns the last (greatest) index of an element within the array equal to an element, or -1 if none is found."
)
@send
external lastIndexOfFrom: (t<'a>, 'a, ~from: int) => int = "lastIndexOf"

@ocaml.doc(
  "Creates a new array populated with the results of calling a provided function on every element in the calling array."
)
@send
external map: (t<'a>, 'a => 'b) => t<'b> = "map"

@ocaml.doc(
  "Creates a new array populated with the results of calling a provided function on every element in the calling array."
)
@send
external mapWithIndex: (t<'a>, ('a, int) => 'b) => t<'b> = "map"
@ocaml.doc(
  "Creates a new array populated with the results of calling a provided function on every element in the calling array."
)
@send
external mapWithSource: (t<'a>, ('a, int, t<'a>) => 'b) => t<'b> = "map"

@ocaml.doc("Removes the last element from an array and returns that element. 
  
Return the removed element from the array")
@send
external pop: (t<'a>, unit) => Option.t<'a> = "pop"

@ocaml.doc("Adds an element to the end of an array, and returns the new length of the array.") @send
external push: (t<'a>, 'a) => int = "push"

@ocaml.doc("Adds many elements to the end of an array, and returns the new length of the array.")
@send
@variadic
external pushMany: (t<'a>, array<'a>) => int = "push"

@ocaml.doc(
  "Apply a function against an accumulator and each value of the array (from left-to-right) as to reduce it to a single value."
)
@send
external reduce: (t<'a>, ('b, 'b) => 'b, 'b) => 'b = "reduce"

@ocaml.doc(
  "Apply a function against an accumulator and each value of the array (from left-to-right) as to reduce it to a single value."
)
@send
external reduceWithIndex: (t<'a>, ('b, 'b, int) => 'b, 'b) => 'b = "reduce"

@ocaml.doc(
  "Apply a function against an accumulator and each value of the array (from left-to-right) as to reduce it to a single value."
)
@send
external reduceWithSource: (t<'a>, ('b, 'b, int, t<'a>) => 'b) => 'b = "reduce"

@ocaml.doc(
  "Apply a function against an accumulator and each value of the array (from right-to-left) as to reduce it to a single value."
)
@send
external reduceRight: (t<'a>, ('b, 'b) => 'b, 'b) => 'b = "reduceRight"

@ocaml.doc(
  "Apply a function against an accumulator and each value of the array (from right-to-left) as to reduce it to a single value."
)
@send
external reduceRightWithIndex: (t<'a>, ('b, 'b, int) => 'b, 'b) => 'b = "reduceRight"

@ocaml.doc(
  "Apply a function against an accumulator and each value of the array (from right-to-left) as to reduce it to a single value."
)
@send
external reduceRightWithSource: (t<'a>, ('b, 'b, int, t<'a>) => 'b, 'b) => 'b = "reduceRight"

@ocaml.doc(
  "Reverses the order of the elements of an array in place. (First becomes the last, last becomes first.)"
)
@send
external reverse: (t<'a>, unit) => t<'a> = "reverse"

@ocaml.doc("Removes the first element from an array and returns that element.") @send
external shift: (t<'a>, unit) => Option.t<'a> = "shift"

@ocaml.doc("Extracts a section of the calling array and returns a new array.") @send
external slice: (t<'a>, ~start: int, ~end: int) => t<'a> = "slice"

@ocaml.doc("Extracts a section of the calling array and returns a new array.") @send
external sliceFrom: (t<'a>, int) => t<'a> = "slice"

@ocaml.doc(
  "Returns `true` if at least one element in this array satisfies the provided testing function."
)
@send
external some: (t<'a>, 'a => bool) => bool = "some"

@ocaml.doc(
  "Returns `true` if at least one element in this array satisfies the provided testing function."
)
@send
external someWithIndex: (t<'a>, ('a, int) => bool) => bool = "some"

@ocaml.doc(
  "Returns `true` if at least one element in this array satisfies the provided testing function."
)
@send
external someWithSource: (t<'a>, ('a, int, t<'a>) => bool) => bool = "some"

@ocaml.doc("Sorts the elements of an array in place and returns the array.") @send
external sort: (t<'a>, unit) => t<'a> = "sort"

@ocaml.doc("Sorts the elements of an array in place and returns the array.") @send
external sortWith: (t<'a>, ('a, 'a) => int) => t<'a> = "sort"

@ocaml.doc("Removes elements from an array.") @send
external splice: (t<'a>, ~start: int, ~count: int) => t<'a> = "splice"

@ocaml.doc("Removes elements from an array.") @send
external spliceFromStart: (t<'a>, int) => t<'a> = "splice"

@ocaml.doc("Removes and replacing an element from an array.") @send
external spliceInPlace: (t<'a>, ~start: int, ~count: int, ~item: 'a) => t<'a> = "splice"

@ocaml.doc("Replace and replacing elements from an array.") @send @variadic
external spliceInPlaceMany: (t<'a>, ~start: int, ~count: int, ~items: array<'a>) => t<'a> = "splice"

@ocaml.doc("Returns a localized string representing the array and its elements.") @send
external toLocaleString: (t<'a>, unit) => string = "toLocaleString"

@ocaml.doc("Returns a localized string representing the array and its elements.") @send
external toLocaleStringWithLocales: (t<'a>, string) => string = "toLocaleString"

@ocaml.doc("Returns a localized string representing the array and its elements.") @send
external toLocaleStringWithNumberOptions: (t<'a>, string, Intl.NumberFormat.optionsT) => string =
  "toLocaleString"

@ocaml.doc("Returns a localized string representing the array and its elements.") @send
external toLocaleStringWitDateOptions: (t<'a>, string, Intl.DateFormat.optionsT) => string =
  "toLocaleString"

// toString

@ocaml.doc("Adds an element to the front of an array, and returns the new length of the array.")
@send
external unshift: (t<'a>, unit) => int = "unshift"

@ocaml.doc(
  "Adds one or more elements to the front of an array, and returns the new length of the array."
)
@send
@variadic
external unshiftMany: (t<'a>, array<'a>) => int = "unshift"

@ocaml.doc("Returns a `Iterator` that contains the values for each index in the array.") @send
external values: t<'a> => Iterator.t<'a> = "values"
