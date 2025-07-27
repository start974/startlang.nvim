# startlang-nvim
Nvim plugin for language [startlang](https://github.com/start974/start-lang)

Included:
- syntax
- configure formmatter with [conform](https://github.com/stevearc/conform.nvim) *(optional)*
    (formatter is name `starlang`)

## Install

### [Lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
return {
  'start974/startlang.nvim',
  dependencies = {
    'stevearc/conform.nvim', -- optional (to use formatter)
  },
  opts = { conform = true },
}
```

## Options
- `conform` (boolean): use conform.nvim for formatting, default: `false`
