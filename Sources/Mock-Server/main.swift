import Vapor

let drop = try Droplet()

drop.get("hello") { req in
  return "Hello Vapor"
}

drop.get("example") { request in
    var json = JSON()
    try json.set("location", "StubLocation")
    try json.set("name", "StubName")
    try json.set("url", "https://avatars0.githubusercontent.com/u/2176586?v=4")
    try json.set("number", 100)
    return json
}

try drop.run()
