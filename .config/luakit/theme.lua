local fennel = require("fennel")

fennel.install()

return fennel.dofile(luakit.config_dir .. "/theme.fnl")
