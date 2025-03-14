--  __  __            _       _
-- |  \/  | __ _ _ __| | ____| | _____      ___ __
-- | |\/| |/ _` | '__| |/ / _` |/ _ \ \ /\ / / '_ \
-- | |  | | (_| | |  |   < (_| | (_) \ V  V /| | | |
-- |_|  |_|\__,_|_|  |_|\_\__,_|\___/ \_/\_/ |_| |_|
--
--  ____        _                  _
-- / ___| _ __ (_)_ __  _ __   ___| |_ ___
-- \___ \| '_ \| | '_ \| '_ \ / _ \ __/ __|
--  ___) | | | | | |_) | |_) |  __/ |_\__ \
-- |____/|_| |_|_| .__/| .__/ \___|\__|___/
--               |_|   |_|

local snippets = {}

local autosnippets = {
	s({
		trig = ";b",
		name = "Bold",
		dscr = "Bold",
	}, fmta([[**<text>**<finish>]], { text = i(1), finish = i(0) })),

	s({
		trig = ";it",
		name = "Itaics",
		dscr = "Italics",
	}, fmta([[*<text>*<finish>]], { text = i(1), finish = i(0) })),
}

return snippets, autosnippets
