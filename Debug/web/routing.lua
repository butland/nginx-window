local router = require('mch.router')
router.setup()
---------------------------------------------------------------------
map('^/login',  'login.show')

map('^/1/hello_v2%?name=(.*)',"test.ctller_v2")
map('^/',"adminindex.mainview")