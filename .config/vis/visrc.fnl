; load standard Vis module, providing parts of the Lua API
(require :vis)

(vis.events.subscribe vis.events.INIT
		; your global configuration options
		(fn [] (vis:command "set theme base16-ashes")))

(vis.events.subscribe vis.events.WIN_OPEN
		; your per window configuration options e.g.
		(fn [win] (vis:command "set relative")
			(vis:command "set cursorline")))
