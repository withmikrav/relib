module Make = (
  T: {
    type t
    type eventTypeT
  },
) => {
  type t = T.t
  type eventTypeT = T.eventTypeT

  type addEventListenerOptionsT = {
    capture: option<bool>,
    once: option<bool>,
    passive: option<bool>,
  }
  @obj
  external makeAddEventListenerOptions: (
    ~capture: bool=?,
    ~once: bool=?,
    ~passive: bool=?,
    unit,
  ) => addEventListenerOptionsT = ""

  @send external addEventListener: (t, eventTypeT => unit) => unit = "addEventListener"
  @send
  external addEventListenerWithOptions: (
    t,
    eventTypeT => unit,
    ~options: addEventListenerOptionsT,
  ) => unit = "addEventListener"
  @send
  external addEventListenerWithUseCapture: (t, eventTypeT => unit, bool) => unit =
    "addEventListener"

  //

  type removeEventListenerOptionsT = {capture: option<bool>}
  @obj
  external makeRemoveEventListenerOptions: (~capture: bool=?, unit) => removeEventListenerOptionsT =
    ""

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
