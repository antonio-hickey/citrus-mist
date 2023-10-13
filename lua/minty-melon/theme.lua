local p = require('minty-melon.palette')
local M = {}

function M.set_colors()

	local theme = {
		-- base highlights
		Normal = { fg = p.fg, bg = p.bg },
		NormalNC = { fg = p.fg, bg = p.bg },
		SignColumn = { fg = p.bg, bg = p.bg },
		FoldColumn = { fg = p.fg_alt, bg = p.bg },
		VertSplit = { fg = p.bg_urgent, bg = p.bg },
		Folded = { fg = p.fg, bg = p.bg },
		EndOfBuffer = { fg = p.bg },
		ColorColumn = { bg = p.bg_alt },
		Conceal = { fg = p.fg_alt },
		QuickFixLine = { bg = p.bg },
		Terminal = { fg= p.fg, bg = p.fg },

		IncSearch = { fg = p.bg, bg = p.cyan },
		Search = { fg = p.bg, bg = p.cyan },
		Visual = { fg = p.bg, bg = p.cyan },
		VisualNOS = { bg = p.bg },

		Cursor = { fg = p.fg, bg = p.fg },
		CursorColumn = { bg = p.bg_alt },
		CursorIM = { fg = p.fg, bg = p.fg },
		CursorLine = { bg = p.bg_alt },
		CursorLineNr = { fg = p.red, bg = "#151311" },
		lCursor = { fg = p.fg, bg = p.fg },
		LineNr = { fg = p.fg_alt, bg = "#0F0E0C"},
		TermCursor = { fg = p.fg, bg = p.fg },
		TermCursorNC = { fg = p.fg, bg = p.fg },

		DiffAdd = { fg = p.green, bg = p.bg },
		DiffChange = { fg = p.yellow, bg = p.bg },
		DiffDelete = { fg = p.red, bg = p.bg },
		DiffText = { fg = p.fg, bg = p.bg },

		Directory = { fg = p.blue },
		ErrorMsg = { fg = p.red },
		WarningMsg = { fg = p.yellow },
		ModeMsg = { fg = p.fg },
		MoreMsg = { fg = p.fg },
		MsgArea = { fg = p.fg, bg = p.bg },
		MsgSeparator = { fg = p.bg_urgent, bg = p.bg },
		Question = { fg = p.cyan },

		MatchParen = { fg = p.yellow },
		NonText = { fg = p.fg_alt },
		SpecialKey = { fg = p.fg_alt },
		Whitespace = { fg = p.bg_alt },

		Pmenu = { fg = p.fg, bg = p.bg_alt },
		PmenuSbar = { bg = p.bg_urgent },
		PmenuSel = { fg = p.bg, bg = p.cyan },
		PmenuThumb = { bg = p.cyan },
		WildMenu = { fg = p.fg, bg = p.bg_alt },
		NormalFloat = { fg = p.fg, bg = p.bg_alt },

		TabLine = { fg = p.fg, bg = p.bg },
		TabLineFill = { fg = p.fg, bg = p.bg },
		TabLineSel = { fg = p.cyan, bg = p.bg },
		StatusLine = { fg = p.fg, bg = p.bg },
		StatusLineNC = { bg = p.bg, fg = p.bg },

		SpellBad = { fg = p.red },
		SpellCap = { fg = p.green },
		SpellLocal = { fg = p.cyan },
		SpellRare = { fg = p.magenta },

		-- syntax
		Boolean = { fg = p.white },
		Character = { fg = p.orange },
		Conditional = { fg = p.magenta },
		Constant = { fg = p.green },
		Debug = { fg = p.red },
		Define = { fg = p.red },
		Error = { fg = p.red },
		Exception = { fg = p.magenta },
		Float = { fg = p.yellow },
		FloatBorder = { fg = p.fg_alt },
		Function = { fg = p.cyan },
		Include = { fg = p.green },
		Keyword = { fg = p.red },
		Label = { fg = p.red },
		Macro = { fg = p.red },
		Number = { fg = p.yellow },
		Operator = { fg = p.red },
		PreCondit = { fg = p.red },
		PreProc = { fg = p.green },
		Repeat = { fg = p.magenta },
		Special = { fg = p.red },
		SpecialChar = { fg = p.orange },
		Statement = { fg = p.green },
		Storage = { fg = p.green },
		StorageClass = { fg = p.green },
		String = { fg = p.green },
		Structure = { fg = p.green },
		Substitute = { fg = p.cyan },
		Tag = { fg = p.red },
		Title = { fg = p.magenta },
		Type = { fg = p.green },
		Typedef = { fg = p.green },
		Variable = { fg = p.fg },

		Comment = { fg = p.fg_alt },
		SpecialComment = { fg = p.fg_alt },
		Todo = { fg = p.fg_alt },
		Delimiter = { fg = p.fg },
		Identifier = { fg = p.fg },
		Ignore = { fg = p.fg },
		Underlined = { underline = true },

		-- bufferline.nvim: https://github.com/akinsho/bufferline.nvim
		BufferLineFill = { fg = p.bg, bg = p.bg },
		BufferLineIndicatorSelected = { fg = p.cyan },

		-- Diagnostic
		DiagnosticError = { fg = p.red },
		DiagnosticHint = { fg = p.cyan },
		DiagnosticInfo = { fg = p.green },
		DiagnosticWarn = { fg = p.yellow },

		-- diff
		diffAdded = { fg = p.green },
		diffChanged = { fg = p.yellow },
		diffFile = { fg = p.fg },
		diffIndexLine = { fg = p.fg },
		diffLine = { fg = p.fg },
		diffNewFile = { fg = p.magenta },
		diffOldFile = { fg = p.orange },
		diffRemoved = { fg = p.red },

		-- gitsigns: https://github.com/lewis6991/gitsigns.nvim
		GitSignsAdd = { fg = p.green },
		GitSignsChange = { fg = p.yellow },
		GitSignsDelete = { fg = p.red },

		-- indent-blankline.nvim: https://github.com/lukas-reineke/indent-blankline.nvim
		IndentBlanklineChar = { fg = p.bg_alt },

		-- nvim-tree.lua: https://github.com/nvim-tree/nvim-tree.lua
		NvimTreeEmptyFolderName = { fg = p.fg_alt },
		NvimTreeEndOfBuffer = { fg = p.fg, bg = p.bg },
		NvimTreeEndOfBufferNC = { fg = p.fg, bg = p.bg },
		NvimTreeFolderIcon = { fg = p.fg, bg = p.bg },
		NvimTreeFolderName = { fg = p.fg },
		NvimTreeGitDeleted = { fg = p.red },
		NvimTreeGitDirty = { fg = p.red },
		NvimTreeGitNew = { fg = p.green },
		NvimTreeImageFile = { fg = p.fg_alt },
		NvimTreeIndentMarker = { fg = p.cyan },
		NvimTreeNormal = { fg = p.fg, bg = p.bg },
		NvimTreeNormalNC = { fg = p.fg, bg = p.bg },
		NvimTreeOpenedFolderName = { fg = p.cyan },
		NvimTreeRootFolder = { fg = p.fg_alt },
		NvimTreeSpecialFile = { fg = p.red },
		NvimTreeStatusLineNC = { bg = p.bg, fg = p.bg },
		NvimTreeSymlink = { fg = p.blue },
		NvimTreeVertSplit = { fg = p.bg, bg = p.bg },

		-- nvim-treesitter: https://github.com/nvim-treesitter/nvim-treesitter
		["@attribute"] = { fg = p.cyan },
		["@boolean"] = { fg = p.white },
		["@character"] = { fg = p.orange },
		["@comment"] = { fg = p.fg_alt },
		["@conditional"] = { fg = p.magenta },
		["@constant"] = { fg = p.cyan },
		["@constant.builtin"] = { fg = p.cyan },
		["@constant.macro"] = { fg = p.cyan },
		["@constructor"] = { fg = p.cyan },
		["@exception"] = { fg = p.magenta },
		["@field"] = { fg = p.cyan },
		["@float"] = { fg = p.yellow },
		["@function"] = { fg = p.cyan },
		["@function.builtin"] = { fg = p.cyan },
		["@function.macro"] = { fg = p.cyan },
		["@include"] = { fg = p.green },
		["@keyword"] = { fg = p.red },
		["@keyword.function"] = { fg = p.red },
		["@keyword.operator"] = { fg = p.red },
		["@keyword.return"] = { fg = p.red },
		["@label"] = { fg = p.cyan },
		["@method"] = { fg = p.green },
		["@namespace"] = { fg = p.cyan },
		["@number"] = { fg = p.yellow },
		["@operator"] = { fg = p.red },
		["@parameter"] = { fg = p.fg },
		["@parameter.reference"] = { fg = p.fg },
		["@property"] = { fg = p.cyan },
		["@punctuation.bracket"] = { fg = p.fg },
		["@punctuation.delimiter"] = { fg = p.fg },
		["@punctuation.special"] = { fg = p.fg },
		["@repeat"] = { fg = p.magenta },
		["@string"] = { fg = p.green },
		["@string.escape"] = { fg = p.red },
		["@string.regex"] = { fg = p.red },
		["@string.special"] = { fg = p.red },
		["@symbol"] = { fg = p.red },
		["@tag"] = { fg = p.red },
		["@tag.attribute"] = { fg = p.yellow },
		["@tag.delimiter"] = { fg = p.blue },
		["@type"] = { fg = p.green },
		["@type.builtin"] = { fg = p.green },
		["@variable"] = { fg = p.fg },
		["@variable.builtin"] = { fg = p.fg },
		["@text"] = { fg = p.fg },
		--["@text.danger"]
		--["@text.emphasis"]
		--["@text.environment.name"]
		--["@text.environtment"]
		--["@text.literal"]
		--["@text.math"]
		--["@text.note"]
		--["@text.reference"]
		--["@text.strike"]
		--["@text.strong"]
		--["@text.title"]
		--["@text.underline"]
		--["@text.uri"]
		--["@text.warning"]

		-- LSP semantic tokens
		["@lsp.type.comment"] = { link = "@comment" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.interface"] = { link = "Identifier" },
		["@lsp.type.keyword"] = { link = "@keyword" },
		["@lsp.type.namespace"] = { link = "@namespace" },
		["@lsp.type.parameter"] = { link = "@parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
		["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.operator.injected"] = { link = "@operator" },
		["@lsp.typemod.string.injected"] = { link = "@string" },
		["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
		["@lsp.typemod.variable.injected"] = { link = "@variable" },

		-- telescope.nvim: https://github.com/nvim-telescope/telescope.nvim
		TelescopeBorder = { fg = p.fg_alt, bg = p.bg },
		TelescopeNormal = { fg = p.fg, bg = p.bg },
		TelescopeSelection = { fg = p.bg, bg = p.cyan },
	}

	vim.g.terminal_color_0 = p.bg
	vim.g.terminal_color_1 = p.red
	vim.g.terminal_color_2 = p.green
	vim.g.terminal_color_3 = p.yellow
	vim.g.terminal_color_4 = p.blue
	vim.g.terminal_color_5 = p.magenta
	vim.g.terminal_color_6 = p.cyan
	vim.g.terminal_color_7 = p.fg
	vim.g.terminal_color_8 = p.fg_alt
	vim.g.terminal_color_9 = p.red
	vim.g.terminal_color_10 = p.green
	vim.g.terminal_color_11 = p.yellow
	vim.g.terminal_color_12 = p.blue
	vim.g.terminal_color_13 = p.magenta
	vim.g.terminal_color_14 = p.cyan
	vim.g.terminal_color_15 = p.fg

	return theme
end

return M
