local status, _ = pcall(vim.cmd, 'colorscheme gruvbox')

if not status then
  print("Theme not found")
  return
end

