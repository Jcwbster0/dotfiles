return {
  {
    "ibhagwan/fzf-lua",
    -- Optional: dependency to show native icons if you ever choose to use them
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local fzf = require("fzf-lua")
      
      -- Setup fzf with a clean, minimal layout
      fzf.setup({
        winopts = {
          height = 0.85,
          width = 0.80,
          preview = { layout = "vertical" } -- Places code previews stacked vertically
        }
      })

      -- Keymaps: Using your Space bar as a leader key
      vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Fuzzy Find Files" })
      vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Search Text Across Project" })
      vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Search Active Buffers" })
    end
  }
}

