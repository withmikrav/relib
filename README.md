## Goals

to binding to javascript standard (built in objects), webapi and nodejs

- Javascript standard: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects
- WebAPI: https://developer.mozilla.org/en-US/docs/Web/API
- NodeJS: https://nodejs.org/api/

We want to create standard library for rescript like this: https://microsoft.github.io/PowerBI-JavaScript/index.html



## Design decisions
- Pipe first
- All items in MDN should be included, if possible.
- All enums should be polymorphic variant with `PascalCase`.
- For constants with `ALL_CAPS`, add prefix `_`, for example, `Number.EPSILON` => `Number._EPSILON`
- Other than that (function name, parameter, etc.) must be `camelCase`

