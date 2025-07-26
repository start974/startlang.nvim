local M = {}

function configure_formatter()
  local ok, conform = pcall(require, 'conform')
  if not ok then
    return
  end
  conform.formatters.startlang {
    command = 'startlang',
    arg = { 'format', '--print' },
  }
end

function M.setup()
  configure_formatter()
end
return M
