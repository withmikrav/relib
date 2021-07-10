type t<'a>

@obj
external makeEmpty: unit => t<'a> = ""

let delete = () =>
  %raw(`
  function(a) {
    delete a
  }
`)

@set_index
external set: (t<'a>, string, 'a) => unit = ""

@get_index
external get: (t<'a>, string) => option<'a> = ""
