#!/usr/bin/env lua
-- -*- lua -*-
-- copyright: 2012 Appwill Inc.
-- author : KDr2
--


module("adminindex",package.seeall)

local JSON = require("cjson")
require("mch.controller")

mainview=mch.controller.Controller:new()

function mainview:get(req, resp, name)
    --resp.headers['Content-Type'] = 'text/plain'
    local template = require "template"
    template.render("admin-index.html", { message = "Hello, World!" },"no-cache",false)
end


