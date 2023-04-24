local path = vim.fn.stdpath 'config' .. '/spell/fr.utf-8.add'
local words = {}

for word in io.open(path, 'r'):lines() do
  table.insert(words, word)
end

return {
  cmd = { '/usr/bin/ltex-ls' },
  filetypes = {'tex', 'bib', 'markdown'};
	settings = {
		ltex = {
			enabled = { "latex", "tex", "bib", "markdown" },
			language = "fr",
			diagnosticSeverity = "information",
			setenceCacheSize = 2000,
			trace = { server = "verbose" },
			dictionary = {
        ['fr'] = words,
      },
			disabledRules = {},
			hiddenFalsePositives = {},
      checkFrequency="edit",
		},
	},
}
