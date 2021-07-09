type t<'a> = Js.Array2.array_like<'a>

type nextItemT<'value> = {
  value: option<'value>,
  done: bool,
}

@send external next: t<'value> => nextItemT<'value> = "next"
