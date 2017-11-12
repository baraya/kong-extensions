local BasePlugin = require "kong.plugins.base_plugin"

local HelloHandler = BasePlugin:extend()

HelloHandler.PRIORITY = 2000

function HelloHandler:new()
  HelloHandler.super.new(self, 'hello')
end

function HelloHandler:access(conf)
  HelloHandler.super.access(self)

  if conf.say_hello then
    ngx.log(ngx.ERR, "=== Hello ! ===")
  else
     ngx.log(ngx.ERR, "=== :( ! ===")
  end
end

return HelloHandler