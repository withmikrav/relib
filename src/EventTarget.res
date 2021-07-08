module Make = (
  T: {
    type t
    type eventTypeT
  },
) => {
  type t = T.t
  type eventTypeT = T.eventTypeT

  type addEventListenerOptionsT
  @obj
  external addEventListenerOptions: (
    ~capture: bool=?,
    ~once: bool=?,
    ~passive: bool=?,
    unit,
  ) => addEventListenerOptionsT = ""

  @send external addEventListener: (t, eventTypeT => unit) => unit = "addEventListener"
  @send
  external addEventListenerWithOptions: (t, eventTypeT => unit, addEventListenerOptionsT) => unit =
    "addEventListener"
  @send
  external addEventListenerWithUseCapture: (t, eventTypeT => unit, bool) => unit =
    "addEventListener"

  //

  type removeEventListenerOptionsT
  @obj
  external removeEventListenerOptions: (~capture: bool=?, unit) => removeEventListenerOptionsT = ""

  @send external removeEventListener: (t, eventTypeT => unit) => unit = "removeEventListener"
  @send
  external removeEventListenerWithOptions: (
    t,
    eventTypeT => unit,
    removeEventListenerOptionsT,
  ) => unit = "removeEventListener"
  @send
  external removeEventListenerWithUseCapture: (t, eventTypeT => unit, bool) => unit =
    "removeEventListener"

  @send external dispatchEvent: (t, Dom.event_like<'a> => unit) => unit = "dispatchEvent"
}
