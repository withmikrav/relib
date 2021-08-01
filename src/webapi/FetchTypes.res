type methodT = [
  | #GET
  | #HEAD
  | #POST
  | #PUT
  | #DELETE
  | #CONNECT
  | #OPTIONS
  | #TRACE
  | #PATCH
]

type modeT = [
  | #cors
  | #"no-cors"
  | #"same-origin"
  | #navigate
]

type credentialsT = [
  | #omit
  | #"same-origin"
  | #"include"
]

type cacheT = [
  | #default
  | #"no-store"
  | #reload
  | #"no-cache"
  | #"force-cache"
  | #"only-if-cached"
]

type redirectT = [
  | #follow
  | #error
  | #manual
]

type destinationT = [
  | @as("") #default
  | #audio
  | #audioworklet
  | #document
  | #embed
  | #font
  | #image
  | #manifest
  | #object
  | #paintworklet
  | #report
  | #script
  | #serviceworker
  | #sharedworker
  | #style
  | #track
  | #video
  | #worker
  | #xslt
]

type typeT = [
  | #basic
  | #cors
  | #error
  | #opaque
  | #opaqueredirect
]
