local M = {}

-- Define colors inspired by a hummingbird's vibrant hues
M.colors = {
	background = "#1e1e2e", -- Dark background
	foreground = "#d0d0d0", -- Light text for readability
	blue = "#005e82", -- Light cyan blue
	dark_blue = "#34495e", -- A darker blue for contrasts
	cyan = "#3cd8d3", -- Cyan for highlights and accents
	green = "#4fbb6a",
	light_purple = "#c382fc", -- Lighter purple tone for a contrast
	purple = "#9b59b6", -- Rich purple for keywords, strings
	magenta = "#e91e63", -- Magenta for errors and critical info
	red = "#f0242a",
	orange = "#fa650a",
	white = "#ffffff", -- White color for status line, etc.
}

-- Define highlight groups
M.setup = function()
	-- General text settings
	vim.api.nvim_set_hl(0, "Normal", { fg = M.colors.blue, bg = M.colors.background })
	vim.api.nvim_set_hl(0, "Comment", { fg = M.colors.purple, italic = true }) -- Comment color
	vim.api.nvim_set_hl(0, "Constant", { fg = M.colors.light_purple }) -- Constants (like numbers)
	vim.api.nvim_set_hl(0, "String", { fg = M.colors.cyan }) -- Strings in purple
	vim.api.nvim_set_hl(0, "Keyword", { fg = M.colors.magenta, bold = true }) -- Keywords in magenta
	vim.api.nvim_set_hl(0, "Error", { fg = M.colors.red, bold = true }) -- Error in magenta
	vim.api.nvim_set_hl(0, "CursorLine", { bg = M.colors.dark_blue }) -- Highlight cursor line
	vim.api.nvim_set_hl(0, "StatusLine", { fg = M.colors.foreground, bg = M.colors.dark_blue }) -- Status line
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = M.colors.foreground, bg = M.colors.dark_blue }) -- Inactive status line
	vim.api.nvim_set_hl(0, "LineNr", { fg = M.colors.dark_blue }) -- Line numbers in dark blue
	vim.api.nvim_set_hl(0, "VertSplit", { fg = M.colors.dark_blue }) -- Vertical split lines

	-- Additional UI Customization (Optional)
	vim.api.nvim_set_hl(0, "MatchParen", { fg = M.colors.orange, bg = M.colors.background, bold = true }) -- Matching parentheses
	vim.api.nvim_set_hl(0, "Visual", { bg = M.colors.purple, fg = M.colors.foreground }) -- Visual selection highlighting
	vim.api.nvim_set_hl(0, "Search", { fg = M.colors.dark_blue, bg = M.colors.orange, bold = true }) -- Search results

	-- Custom highlighting for LSP Diagnostics
	vim.api.nvim_set_hl(0, "DiagnosticError", { fg = M.colors.magenta, bold = true }) -- Error diagnostics in magenta
	vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = M.colors.yellow }) -- Warning diagnostics in yellow
	vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = M.colors.blue }) -- Info diagnostics in blue
	vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = M.colors.cyan }) -- Hint diagnostics in cyan
end

return M
