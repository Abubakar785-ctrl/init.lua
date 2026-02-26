-- Leader
vim.g.mapleader = " "

-- Load core configs
require("config.options")
require("config.keymaps")
require("config.set")

-- Bootstrap lazy
require("config.lazy")
