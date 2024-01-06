return {
  "ThePrimeagen/harpoon",
  lazy = false,
  branch = "harpoon2",
  init = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup({
      settings = {
        save_on_toggle = true,
      },
    })
    -- REQUIRED

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():append()
    end)
    vim.keymap.set("n", "<leader>r", function()
      harpoon:list():remove()
    end)
    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set("n", "<A-1>", function()
      harpoon:list():select(1)
    end)
    vim.keymap.set("n", "<A-2>", function()
      harpoon:list():select(2)
    end)
    vim.keymap.set("n", "<A-3>", function()
      harpoon:list():select(3)
    end)
    vim.keymap.set("n", "<A-4>", function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-P>", function()
      harpoon:list():prev()
    end)
    vim.keymap.set("n", "<C-S-N>", function()
      harpoon:list():next()
    end)
  end,
  dependencies = { "nvim-lua/plenary.nvim" },
}
