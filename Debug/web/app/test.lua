#!/usr/bin/env lua
-- -*- lua -*-
-- copyright: 2012 Appwill Inc.
-- author : KDr2
--


module("test",package.seeall)

local JSON = require("cjson")
require("mch.controller")


ctller_v2=mch.controller.Controller:new()

function ctller_v2:before(req, resp)
    resp:writeln("BEFORE FILTER")
    resp:set_cookie("a","a_value")
    resp:set_cookie("b","b_value")
    resp:set_cookie("c","to_be_removed_in_get")
end

function ctller_v2:get(req, resp, name)
    resp.headers['Content-Type'] = 'text/plain'
    resp:writeln("Hello, " .. name .. ". I got you from a GET!")
    resp:set_cookie("c") -- clear cookie c
end


function ctller_v2:post(req, resp, name)
    req:read_body()
    resp.headers['Content-Type'] = 'application/json'
    resp:writeln("Hello, " .. name .. ". I got you from a POST!")
    resp:writeln(JSON.encode(req.post_args))
end



