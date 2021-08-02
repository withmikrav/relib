@ocaml.doc("Writes an error message to the console if the assertion is `false`. If the assertion is `true`, nothing happens.
  
https://developer.mozilla.org/en-US/docs/Web/API/console/assert")
@scope("console")
@val
external assert_: (bool, ~message: string) => unit = "assert"

//

@ocaml.doc("Clears the console if the environment allows it.

https://developer.mozilla.org/en-US/docs/Web/API/console/clear")
@scope("console")
@val
external clear: unit => unit = "clear"

//

@ocaml.doc("Logs the number of times that this particular call to count() has been called.

https://developer.mozilla.org/en-US/docs/Web/API/console/count")
@scope("console")
@val
external count: unit => unit = "count"

@ocaml.doc("Logs the number of times that this particular call to count() has been called.

https://developer.mozilla.org/en-US/docs/Web/API/console/count")
@scope("console")
@val
external countWithLabel: (~label: string) => unit = "count"

//

@ocaml.doc("Resets counter used with `console.count().`

https://developer.mozilla.org/en-US/docs/Web/API/console/countReset")
@scope("console")
@val
external countReset: unit => unit = "countReset"

@ocaml.doc("Resets counter used with `console.count().`

https://developer.mozilla.org/en-US/docs/Web/API/console/countReset")
@scope("console")
@val
external countResetWithLabel: (~label: string) => unit = "countReset"

//

@ocaml.doc("outputs a message to the web console at the \"debug\" log level. The message is only displayed to the user if the console is configured to display debug output. In most cases, the log level is configured within the console UI. This log level might correspond to the `Debug` or `Verbose` log level.

https://developer.mozilla.org/en-US/docs/Web/API/console/debug")
@scope("console")
@val
external debug: 'a => unit = "debug"

//

@ocaml.doc("Displays an interactive list of the properties of the specified JavaScript object. The output is presented as a hierarchical listing with disclosure triangles that let you see the contents of child objects..

https://developer.mozilla.org/en-US/docs/Web/API/console/dir")
@scope("console")
@val
external dir: 'a => unit = "dir"

//

@ocaml.doc("displays an interactive tree of the descendant elements of the specified XML/HTML element. If it is not possible to display as an element the JavaScript Object view is shown instead. The output is presented as a hierarchical listing of expandable nodes that let you see the contents of child nodes.

https://developer.mozilla.org/en-US/docs/Web/API/console/dirxml")
@scope("console")
@val
external dirxml: 'a => unit = "dirxml"

//

@ocaml.doc("Outputs an error message to the Web console.

https://developer.mozilla.org/en-US/docs/Web/API/console/error")
@scope("console")
@val
external error: 'a => unit = "error"

//

@ocaml.doc("Creates a new inline group in the Web console log. This indents following console messages by an additional level, until `console.groupEnd()` is called.

https://developer.mozilla.org/en-US/docs/Web/API/console/group")
@scope("console")
@val
external group: unit => unit = "group"

@ocaml.doc("Creates a new inline group in the Web console log. This indents following console messages by an additional level, until `console.groupEnd()` is called.

https://developer.mozilla.org/en-US/docs/Web/API/console/group")
@scope("console")
@val
external groupWithLabel: (~label: string) => unit = "group"

//
@ocaml.doc("creates a new inline group in the Web Console. Unlike `console.group()`, however, the new group is created collapsed. The user will need to use the disclosure button next to it to expand it, revealing the entries created in the group.

Call `console.groupEnd()` to back out to the parent group.

https://developer.mozilla.org/en-US/docs/Web/API/console/groupCollapsed")
@scope("console")
@val
external groupCollapsed: unit => unit = "groupCollapsed"

@ocaml.doc("creates a new inline group in the Web Console. Unlike `console.group()`, however, the new group is created collapsed. The user will need to use the disclosure button next to it to expand it, revealing the entries created in the group.

Call `console.groupEnd()` to back out to the parent group.

https://developer.mozilla.org/en-US/docs/Web/API/console/groupCollapsed")
@scope("console")
@val
external groupCollapsedWithLabel: (~label: string) => unit = "groupCollapsed"

//

@ocaml.doc("Exits the current inline group in the Web console.

https://developer.mozilla.org/en-US/docs/Web/API/console/groupEnd")
@scope("console")
@val
external groupEnd: unit => unit = "groupEnd"

//

@ocaml.doc("Outputs an informational message to the Web console. In Firefox, a small \"i\" icon is displayed next to these items in the Web console's log.

https://developer.mozilla.org/en-US/docs/Web/API/console/info")
@scope("console")
@val
external info: 'a => unit = "info"

//

@ocaml.doc("Outputs a message to the web console.

https://developer.mozilla.org/en-US/docs/Web/API/console/log")
@scope("console")
@val
external log: 'a => unit = "log"

//

@ocaml.doc("Starts recording a performance profile.

https://developer.mozilla.org/en-US/docs/Web/API/console/profile")
@scope("console")
@val
external profile: unit => unit = "profile"

@ocaml.doc("Starts recording a performance profile.

https://developer.mozilla.org/en-US/docs/Web/API/console/profile")
@scope("console")
@val
external profileWithName: (~name: string) => unit = "profile"

//

@ocaml.doc("Stops recording a profile previously started with `console.profile()`.

https://developer.mozilla.org/en-US/docs/Web/API/console/profile")
@scope("console")
@val
external profileEnd: unit => unit = "profileEnd"

@ocaml.doc("Stops recording a profile previously started with `console.profile()`.

https://developer.mozilla.org/en-US/docs/Web/API/console/profile")
@scope("console")
@val
external profileEndWithName: (~name: string) => unit = "profileEnd"

//

@ocaml.doc("Displays tabular data as a table.

https://developer.mozilla.org/en-US/docs/Web/API/console/table")
@scope("console")
@val
external table: 'a => unit = "table"

//

@ocaml.doc("Starts a timer you can use to track how long an operation takes. You give each timer a unique name, and may have up to 10,000 timers running on a given page. When you call `console.timeEnd()` with the same name, the browser will output the time, in milliseconds, that elapsed since the timer was started.

https://developer.mozilla.org/en-US/docs/Web/API/console/time")
@scope("console")
@val
external time: string => unit = "time"

//

@ocaml.doc("Stops a timer that was previously started by calling `console.time()`.

https://developer.mozilla.org/en-US/docs/Web/API/console/timeEnd")
@scope("console")
@val
external timeEnd: string => unit = "timeEnd"

//

@ocaml.doc("Logs the current value of a timer that was previously started by calling `console.time()` to the console.

https://developer.mozilla.org/en-US/docs/Web/API/console/timeLog")
@scope("console")
@val
external timeLog: string => unit = "timeLog"

//

@ocaml.doc("Adds a single marker to the browser's Performance or Waterfall tool.

https://developer.mozilla.org/en-US/docs/Web/API/console/timeStamp")
@scope("console")
@val
external timeStamp: string => unit = "timeStamp"

//

@ocaml.doc("Outputs a stack trace to the Web console.

https://developer.mozilla.org/en-US/docs/Web/API/console/trace")
@scope("console")
@val
external trace: 'a => unit = "trace"

//

@ocaml.doc("Outputs a warning message to the Web console.

https://developer.mozilla.org/en-US/docs/Web/API/console/warn")
@scope("console")
@val
external warn: 'a => unit = "warn"

//
