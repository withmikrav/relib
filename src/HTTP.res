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
