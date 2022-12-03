require('base')
require('highlight')
require('macos')
require('maps')
require('setup-plugins')
require('grovebox')

local has = vim.fn.has
local is_mac = has "macunix"

if is_mac then
  require('macos')
end
