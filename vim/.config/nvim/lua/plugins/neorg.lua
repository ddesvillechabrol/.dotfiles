return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},  -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.keybinds"] = {
            config = {
              hook = function(keybinds)
                keybinds.remap_event("norg", "n", "md", "core.qol.todo_items.todo.task_done")
                keybinds.remap_event("norg", "n", "mu", "core.qol.todo_items.todo.task_undone")
                keybinds.remap_event("norg", "n", "mp", "core.qol.todo_items.todo.task_pending")
                keybinds.remap_event("norg", "n", "mc", "core.qol.todo_items.todo.task_cancelled")
                keybinds.remap_event("norg", "n", "mn", "core.dirman.new.note")
              end,
            }
          },
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                work = "~/notes/work/",
                todo = "~/notes/todo/",
                note = "~/notes/note/",
              },
              default_workspace = "note",
            },
          },
        },
      }
    end,
  },
}
