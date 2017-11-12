package = "kong-plugin-hello"
version = "0.1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/baraya/kong-extensions/kong-plugin-hello"
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.hello.handler"] = "src/handler.lua",
    ["kong.plugins.hello.schema"] = "src/schema.lua"
  }
}