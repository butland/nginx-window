--ngx.header.content_type = "text/plain"
-- local redis=require("redis")
-- ngx.say(bit.tohex(9))
-- local regex = "\\\\d+"
-- local m = ngx.re.match("hello, 1234", regex)
-- if m then ngx.say(m[0]) else ngx.say("not matched!") end
-- ngx.say("hello")
-- local test="4534".."ÖÐ¹úÈË"
-- ngx.say(test)

module("login",package.seeall)

function show() 
    --ngx.say("1221431")
    local template = require "template"
    template.render("login.html", { message = "Hello, World!" },"no-cache",false)
end



