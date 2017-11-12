local _M = {}

function _M.execute(conf)
  if conf.say_hello then
    ngx.log(ngx.ERR, "*** Hello ***")
  else
    ngx.log(ngx.ERR, "*** :( ***")
  end
end

return _M