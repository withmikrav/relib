type methodT = [
  | @as("GET") #Get
  | @as("HEAD") #Head
  | @as("POST") #Post
  | @as("PUT") #Put
  | @as("DELETE") #Delete
  | @as("CONNECT") #Connect
  | @as("OPTIONS") #Options
  | @as("TRACE") #Trace
  | @as("PATCH") #Patch
]

type modeT = [
  | @as("cors") #Cors
  | @as("no-cors") #NoCors
  | @as("same-origin") #SameOrigin
  | @as("navigate") #Navigate
]

type credentialsT = [
  | @as("omit") #Omit
  | @as("same-origin") #SameOrigin
  | @as("include") #Include
]

type cacheT = [
  | @as("default") #Default
  | @as("no-store") #NoStore
  | @as("reload") #Reload
  | @as("no-cache") #NoCache
  | @as("force-cache") #ForceCache
  | @as("only-if-cached") #OnlyIfCached
]

type redirectT = [
  | @as("follow") #Follow
  | @as("error") #Error
  | @as("manual") #Manual
]

type destinationT = [
  | @as("") #Default
  | @as("audio") #Audio
  | @as("audioworklet") #AudioWorklet
  | @as("document") #Document
  | @as("embed") #Embed
  | @as("font") #Font
  | @as("image") #Image
  | @as("manifest") #Manifest
  | @as("object") #Object
  | @as("paintworklet") #PaintWorklet
  | @as("report") #Report
  | @as("script") #Script
  | @as("serviceworker") #ServiceWorker
  | @as("sharedworker") #SharedWorker
  | @as("style") #Style
  | @as("track") #Track
  | @as("video") #Video
  | @as("worker") #Worker
  | @as("xslt") #Xslt
]

type typeT = [
  | @as("basic") #Basic
  | @as("cors") #Cors
  | @as("error") #Error
  | @as("opaque") #Opaque
  | @as("opaqueredirect") #OpaqueRedirect
]
