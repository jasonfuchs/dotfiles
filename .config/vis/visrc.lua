local fennel = require("fennel")

fennel.install().dofile((os.getenv("XDG_CONFIG_HOME") or (os.getenv("HOME") .. "/.config")) .. "/vis/visrc.fnl")
