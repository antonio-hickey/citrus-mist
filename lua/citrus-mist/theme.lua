local p = require('citrus-mist.palette')
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

		IncSearch = { fg = p.bg, bg = p.light_mist },
		Search = { fg = p.bg, bg = p.light_mist },
		Visual = { fg = p.bg, bg = p.citrus_green_alt },
		VisualNOS = { bg = p.bg },

		Cursor = { fg = p.fg, bg = p.fg },
		CursorColumn = { bg = p.bg_alt },
		CursorIM = { fg = p.fg, bg = p.fg },
		CursorLine = { bg = p.bg_alt },
		CursorLineNr = { fg = p.citrus, bg = p.bg },
		lCursor = { fg = p.fg, bg = p.fg },
		LineNr = { fg = p.fg_alt, bg =  p.bg },
		TermCursor = { fg = p.fg, bg = p.fg },
		TermCursorNC = { fg = p.fg, bg = p.fg },

		DiffAdd = { fg = p.citrus_green, bg = p.bg },
		DiffChange = { fg = p.citrus_alt, bg = p.bg },
		DiffDelete = { fg = p.citrus, bg = p.bg },
		DiffText = { fg = p.fg, bg = p.bg },

		Directory = { fg = p.dark_mist },
		ErrorMsg = { fg = p.citrus },
		WarningMsg = { fg = p.citrus_alt },
		ModeMsg = { fg = p.fg },
		MoreMsg = { fg = p.fg },
		MsgArea = { fg = p.fg, bg = p.bg },
		MsgSeparator = { fg = p.bg_urgent, bg = p.bg },
		Question = { fg = p.light_mist },

		MatchParen = { fg = p.citrus_alt },
		NonText = { fg = p.fg_alt },
		SpecialKey = { fg = p.fg_alt },
		Whitespace = { fg = p.bg_alt },

		Pmenu = { fg = p.fg, bg = p.bg_alt },
		PmenuSbar = { bg = p.bg_urgent },
		PmenuSel = { fg = p.bg, bg = p.light_mist },
		PmenuThumb = { bg = p.light_mist },
		WildMenu = { fg = p.fg, bg = p.bg_alt },
		NormalFloat = { fg = p.fg, bg = p.bg_alt },

		TabLine = { fg = p.fg, bg = p.bg },
		TabLineFill = { fg = p.fg, bg = p.bg },
		TabLineSel = { fg = p.light_mist, bg = p.bg },
		StatusLine = { fg = p.fg, bg = p.bg },
		StatusLineNC = { bg = p.bg, fg = p.bg },

		SpellBad = { fg = p.citrus },
		SpellCap = { fg = p.citrus_green },
		SpellLocal = { fg = p.light_mist },
		SpellRare = { fg = p.dark_mist },

		-- syntax
		Boolean = { fg = p.white },
		Character = { fg = p.citrus },
		Conditional = { fg = p.citrus_alt },
		Constant = { fg = p.citrus },
		Debug = { fg = p.citrus },
		Define = { fg = p.citrus },
		Error = { fg = p.citrus },
		Exception = { fg = p.citrus },
		Float = { fg = p.citrus_alt },
		FloatBorder = { fg = p.fg_alt },
		Function = { fg = p.dark_mist },
		Include = { fg = p.citrus },
		Keyword = { fg = p.light_mist },
		Label = { fg = p.citrus },
		Macro = { fg = p.citrus_green_alt },
		Number = { fg = p.citrus_alt },
		Operator = { fg = p.citrus_green },
		PreCondit = { fg = p.citrus },
		PreProc = { fg = p.citrus },
		Repeat = { fg = p.citrus_alt },
		Special = { fg = p.citrus_green_alt },
		SpecialChar = { fg = p.citrus },
		Statement = { fg = p.citrus_green },
		Storage = { fg = p.citrus_green },
		StorageClass = { fg = p.citrus_green },
		String = { fg = p.citrus_green_alt },
		Structure = { fg = p.citrus },
		Substitute = { fg = p.light_mist },
		Tag = { fg = p.citrus },
		Title = { fg = p.citrus_green },
		Type = { fg = p.light_mist },
		Typedef = { fg = p.light_mist },
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
		DiagnosticError = { fg = p.citrus },
		DiagnosticHint = { fg = p.citrus_green_alt },
		DiagnosticInfo = { fg = p.light_mist },
		DiagnosticWarn = { fg = p.citrus_alt },

		-- diff
		diffAdded = { fg = p.citrus_green_alt },
		diffChanged = { fg = p.citrus_alt },
		diffFile = { fg = p.fg },
		diffIndexLine = { fg = p.fg },
		diffLine = { fg = p.fg },
		diffNewFile = { fg = p.citrus_green },
		diffOldFile = { fg = p.citrus_alt },
		diffRemoved = { fg = p.citrus },

		-- gitsigns: https://github.com/lewis6991/gitsigns.nvim
		GitSignsAdd = { fg = p.citrus_green_alt },
		GitSignsChange = { fg = p.citrus_alt },
		GitSignsDelete = { fg = p.citrus },

		-- indent-blankline.nvim: https://github.com/lukas-reineke/indent-blankline.nvim
		IndentBlanklineChar = { fg = p.bg_alt },

		-- nvim-tree.lua: https://github.com/nvim-tree/nvim-tree.lua
		NvimTreeEmptyFolderName = { fg = p.fg_alt },
		NvimTreeEndOfBuffer = { fg = p.fg, bg = p.bg },
		NvimTreeEndOfBufferNC = { fg = p.fg, bg = p.bg },
		NvimTreeFolderIcon = { fg = p.fg, bg = p.bg },
		NvimTreeFolderName = { fg = p.fg },
		NvimTreeGitDeleted = { fg = p.citrus },
		NvimTreeGitDirty = { fg = p.citrus },
		NvimTreeGitNew = { fg = p.citrus_green },
		NvimTreeImageFile = { fg = p.fg_alt },
		NvimTreeIndentMarker = { fg = p.dark_mist },
		NvimTreeNormal = { fg = p.fg, bg = p.bg },
		NvimTreeNormalNC = { fg = p.fg, bg = p.bg },
		NvimTreeOpenedFolderName = { fg = p.light_mist },
		NvimTreeRootFolder = { fg = p.fg_alt },
		NvimTreeSpecialFile = { fg = p.citrus },
		NvimTreeStatusLineNC = { bg = p.bg, fg = p.bg },
		NvimTreeSymlink = { fg = p.dark_mist },
		NvimTreeVertSplit = { fg = p.bg, bg = p.bg },

		-- nvim-treesitter: https://github.com/nvim-treesitter/nvim-treesitter
		["@attribute"] = { fg = p.light_mist },
		["@boolean"] = { fg = p.white },
		["@character"] = { fg = p.citrus },
		["@comment"] = { fg = p.fg_alt },
		["@conditional"] = { fg = p.citrus_alt },
		["@constant"] = { fg = p.dark_mist },
		["@constant.builtin"] = { fg = p.light_mist },
		["@constant.macro"] = { fg = p.light_mist },
		["@constructor"] = { fg = p.light_mist },
		["@exception"] = { fg = p.citrus_alt },
		["@field"] = { fg = p.light_mist },
		["@float"] = { fg = p.citrus_alt },
		["@function"] = { fg = p.light_mist },
		["@function.builtin"] = { fg = p.light_mist },
		["@function.macro"] = { fg = p.light_mist },
		["@include"] = { fg = p.citrus },
		["@keyword"] = { fg = p.light_mist },
		["@keyword.function"] = { fg = p.light_mist },
		["@keyword.operator"] = { fg = p.light_mist },
		["@keyword.return"] = { fg = p.dark_mist },
		["@label"] = { fg = p.citrus_alt },
		["@method"] = { fg = p.dark_mist },
		["@namespace"] = { fg = p.light_mist },
		["@number"] = { fg = p.citrus_green },
		["@operator"] = { fg = p.citrus },
		["@parameter"] = { fg = p.fg },
		["@parameter.reference"] = { fg = p.fg },
		["@property"] = { fg = p.light_mist },
		["@punctuation.bracket"] = { fg = p.fg },
		["@punctuation.delimiter"] = { fg = p.fg },
		["@punctuation.special"] = { fg = p.fg },
		["@repeat"] = { fg = p.citrus_alt },
		["@string"] = { fg = p.citrus_green_alt },
		["@string.escape"] = { fg = p.citrus },
		["@string.regex"] = { fg = p.citrus },
		["@string.special"] = { fg = p.citrus },
		["@symbol"] = { fg = p.citrus },
		["@tag"] = { fg = p.light_mist },
		["@tag.attribute"] = { fg = p.light_mist },
		["@tag.delimiter"] = { fg = p.dark_mist },
		["@type"] = { fg = p.light_mist },
		["@type.builtin"] = { fg = p.light_mist },
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
		TelescopeSelection = { fg = p.bg, bg = p.light_mist },
	}

	vim.g.terminal_color_0 = p.bg
	vim.g.terminal_color_1 = p.citrus
	vim.g.terminal_color_2 = p.citrus_green
	vim.g.terminal_color_3 = p.citrus_alt
	vim.g.terminal_color_4 = p.dark_mist
	vim.g.terminal_color_5 = p.citrus_green_alt
	vim.g.terminal_color_6 = p.light_mist
	vim.g.terminal_color_7 = p.fg
	vim.g.terminal_color_8 = p.fg_alt
	vim.g.terminal_color_9 = p.citrus
	vim.g.terminal_color_10 = p.citrus_green
	vim.g.terminal_color_11 = p.citrus_alt
	vim.g.terminal_color_12 = p.dark_mist
	vim.g.terminal_color_13 = p.citrus_green_alt
	vim.g.terminal_color_14 = p.light_mist
	vim.g.terminal_color_15 = p.fg

	return theme
end

return M
