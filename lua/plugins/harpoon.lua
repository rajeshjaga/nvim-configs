return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set("n", "<leader>A", function() harpoon:list():append() end)
    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<leader>P", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<leader>N", function() harpoon:list():next() end)
  end,
}
