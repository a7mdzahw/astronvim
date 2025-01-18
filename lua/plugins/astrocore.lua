-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
---@type LazySpec
return {
  "AstroNvim/astrocore",
  opts = {
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map
        ["<S-V>"] = { "<C-V>", remap = true, desc = "Toggle visual block mode" },

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        ["<S-H>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["<S-L>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- Split navigation
        ["<Leader>h"] = { "<C-w>h", desc = "Move to left split" },
        ["<Leader>j"] = { "<C-w>j", desc = "Move to below split" },
        ["<Leader>k"] = { "<C-w>k", desc = "Move to above split" },
        ["<Leader>l"] = { "<C-w>l", desc = "Move to right split" },

        -- Resize splits
        -- use the ctrl h j k l to resize splits
        ["<D-j>"] = { "10<C-w>+", desc = "Resize split up" },
        ["<D-u>"] = { "10<C-w>-", desc = "Resize split down" },
        ["≥"] = { "10<C-w>>", desc = "Resize split left", remap = true },
        ["≤"] = { "10<C-w><", desc = "Resize split right" },
        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
    },
  },
}
