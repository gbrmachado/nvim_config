---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    diagnostics = {
      virtual_text = true,
      underline = true,
      severity_sort = true,
    },
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        tabstop = 4,
        shiftwidth = 4,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    mappings = {
      -- first key is the mode
      n = {
        -- Mapping for go tests
        ["<Leader>Tp"] = { ":GoTestPackage<CR>", desc = "Run GoTestPackage" },
        ["<Leader>Tf"] = { ":GoTestFunc<CR>", desc = "Run GoTestFunc" },
        ["<Leader>TF"] = { ":GoTestFile<CR>", desc = "Run GoTest for the File" },
        ["<Leader>TS"] = { ":GoTestSum", desc = "Run GoTest for the Suite" },
        ["<Leader>TT"] = { ":GoTest<CR>", desc = "Run GoTest" },
      },
    },
  },
}
