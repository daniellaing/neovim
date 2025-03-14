--      _                              _                  _
--     | | __ ___   ____ _   ___ _ __ (_)_ __  _ __   ___| |_ ___
--  _  | |/ _` \ \ / / _` | / __| '_ \| | '_ \| '_ \ / _ \ __/ __|
-- | |_| | (_| |\ V / (_| | \__ \ | | | | |_) | |_) |  __/ |_\__ \
--  \___/ \__,_| \_/ \__,_| |___/_| |_|_| .__/| .__/ \___|\__|___/
--                                      |_|   |_|

local snippets = {
	s({
		trig = "fstr",
		name = "Format string",
		dscr = "Format string",
	}, fmta([[String.format("<text>", <args>)<finish>]], { text = i(1), args = i(2), finish = i(0) })),
}

local autosnippets = {
	s(
		{
			trig = "println",
			name = "Println",
			dscr = "Println",
		},
		fmta(
			[[System.out.println("<text>");
<finish>]],
			{ text = i(1), finish = i(0) }
		)
	),

	s(
		{
			trig = "printf",
			name = "Printf",
			dscr = "Println with a format string.",
		},
		fmta(
			[[System.out.println(String.format("<text>", <args>));
<finish>]],
			{ text = i(1), args = i(2), finish = i(0) }
		)
	),
}

return snippets, autosnippets
