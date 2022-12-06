require("setup-plugins")
require('base')
require('highlight')
require('macos')
require('maps')
require('gruvebox')


local has = vim.fn.has
local is_mac = has "macunix"

if is_mac then
  require('macos')
end
