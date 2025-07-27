local M = {}

function configure_conform()
  local conform = require('conform')

  conform.formatters.startlang_format = {
    command = 'startlang',
    args = { 'format', '$FILENAME', '--print' },
  }

  conform.formatters_by_ft.startlang = { 'startlang_format' }
end

function M.setup(opts)
  opts = vim.tbl_deep_extend('force', {
    conform = false,
  }, opts or {})

  if opts.conform then
    configure_conform()
  end
end
return M
