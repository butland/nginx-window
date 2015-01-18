debug={
    on=false,
    to="response", -- "ngx.log"
}

logger = {
    file = "moochine_demo.log",
    level = "DEBUG",
}

config={
    --templates="templates",
}

subapps={
    -- subapp_name = {path="/path/to/another/moochineapp", config={}},
}