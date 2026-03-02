if vim.fn.filereadable("project.godot") == 1 then
  vim.fn.serverstart("/tmp/godot.pipe")
end
