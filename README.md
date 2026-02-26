# 💤 My Neovim Configuration

> Minimal • Fast • Custom • Riced

This is my personal Neovim configuration built for productivity,
development, and aesthetic satisfaction.

---

## 🚀 Features

- 🧠 Lazy plugin manager
- 🎨 Catppuccin theme
- ⚡ Fast startup
- 🔥 LSP support
- 🧭 Auto completion
- 🗂 File explorer
- 💻 Terminal integration
- 🛠 Custom keymaps

---

## 📦 Installation

### Clone the repo

```bash
git clone git@github.com:Abubakar785-ctrl/init.lua.git ~/.config/nvim
nvim
```

and if the plugins do not installed autmaticaly just run (in nvim)

```bash
:Lazy sync
```
# the Story for this config (option to read)

## 📖 The Story

So i was like you use other's config like LazyVim, theprimeagen(which is now thearchgen), NvChad, etc... and my most favorite one was not nvcad not laszy i like config craeted by theprimeagen and the typecraft one but here are some of the problems i faced with those config:

- They are too much like thye have been build so much early that now 70% of the plugins are deprecated and not working and the config is not updated for a long time that is fne for some people but i do not like nay error in my config and i want it to be up to date with the latest plugins and features of neovim

- They are so much config that i find it hard to understand and customize it for myself and i want to have a config that is easy to understand and customize for myself

- They are not like for example lazynvim i find it too much hard to just change my dashboard and i want to have a config that is easy to change the dashboard and other things like that

NOTE: I am not saying that those config are bad or sayong that no one use them evryone has there own tast i just want to have my own config that is minimal and fast and easy to customize for myself and i want to share it with others who want to have a similar config like mine.

## My solution

So i decided to create my own config from scratch and i want to share it with others who want to have a similar config like mine and i want to keep it minimal and fast and easy to customize for myself and others and i want to keep it up to date with the latest plugins and features of neovim and i want to have a config that is easy to understand and customize for myself and others and i want to have a config that is easy to change the dashboard and other things like that.


so the plugins that i am using in my config are:
- plugin manager = Lazy
- theme = catppuccin
- LSP = Mason, null-ls, nvim-lspconfig etc... (yeah i forgot but yeah i am using those plugins for LSP)
- Auto completion = yes i am using nvim-cmp and some other plugins for auto completion
- File explorer = nveo-tree

and the important keymaps that i am using in my config are:
- <leader>ff = find files
- <leader>fg = find git files
- <leader>fb = find buffers
- <leader>fh = find help
- <leader>fs = find string
- h, j,k,l = move left, down, up, right
- <leader>e = toggle file explorer
- <leader>u = undotree

and for practicing and learning neovim i am use vim-be-good and to launch it just type :VimBeGood in your neovim and it will launch the game and you can practice your vim skills in a fun way.

## Working On

So i ma wokring on to add these features in my config:

- termal integration = i am working on to add toggleterm plugin for terminal integration in my config
- git integration = i am working on to add gitsigns plugin for git integration in my config


AND if you have any suggestions for plugins or features that i can add in my config please let me know in the issues section of this repo and i will try to add it in my config if it is good and useful for others.
