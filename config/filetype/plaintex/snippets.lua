--  ____  _       _     _____   __  __  ____        _                  _
-- |  _ \| | __ _(_)_ _|_   _|__\ \/ / / ___| _ __ (_)_ __  _ __   ___| |_ ___
-- | |_) | |/ _` | | '_ \| |/ _ \\  /  \___ \| '_ \| | '_ \| '_ \ / _ \ __/ __|
-- |  __/| | (_| | | | | | |  __//  \   ___) | | | | | |_) | |_) |  __/ |_\__ \
-- |_|   |_|\__,_|_|_| |_|_|\___/_/\_\ |____/|_| |_|_| .__/| .__/ \___|\__|___/
--                                                   |_|   |_|

local snippets = {
	s("trig", i("PlainTeX")),
	s(
		{
			trig = "documentclass",
			name = "documentclass[]{}",
			dcsr = "Document Class",
		},
		fmta(
			[[\documentclass[<opt>]{<cls>}
<finish>]],
			{
				cls = i(1),
				opt = i(2),
				finish = i(0),
			}
		)
	),

	s(
		{
			trig = "article",
			name = "Article",
			dscr = "Article document class",
		},
		fmta(
			[[\documentclass[<opt>]{article}
<finish>]],
			{
				opt = i(1, "a4paper, 12pt, final, oneside"),
				finish = i(0),
			}
		)
	),

	s(
		{
			trig = "document",
			name = "Document",
			dscr = "Begin document",
		},
		fmta(
			[[
\begin{document}
<>
\end{document}
        ]],
			i(0)
		)
	),
}

local autosnippets = {}

return snippets, autosnippets
