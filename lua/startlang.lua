local M = {}

function configure_conform()
  local conform = require('conform')

  conform.formatters.startlang_format = {
    command = 'startlang',
    args = { 'format', '$FILENAME', '--print' },
  }

  conform.formatters_by_ft.startlang = { 'startlang_format' }
end

function config_lsp(opts) end

function M.setup(opts)
  opts = vim.tbl_deep_extend('force', {
    conform = false,
    lsp = true,
  }, opts or {})

  if opts.conform then
    configure_conform()
  end

  if opts.lsp then
    vim.lsp.enable('startlang_lsp')
  end
end
return M
