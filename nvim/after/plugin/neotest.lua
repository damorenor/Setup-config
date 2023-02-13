require("neotest").setup({
    adapters = {
        require("neotest-python")({
            dap = { justMyCode = false },
        }),
    }
})

vim.keymap.set("n","<leader>tt", function ()
   require("neotest").run.run()
end)

vim.keymap.set("n","<leader>to", function ()
  require("neotest").output.open({ enter = true })
end)
