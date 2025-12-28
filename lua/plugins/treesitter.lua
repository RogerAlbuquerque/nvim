return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag", -- VOCÊ PRECISA DESTE PLUGIN PARA O AUTOTAG FUNCIONAR
    },
    opts = {
      ensure_installed = {
	"lua",
	"javascript",
	"typescript",
	"tsx",
	"go",
	"rust",
	"css",
	"html",
	"yaml",
	"java",
	"c",
	"cpp",
	"zsh",
	"dockerfile",
	"c_sharp",
      },
      highlight = {
	enable = true,
      },
      indent = {
	enable = true,
      },
      autotag = {
	enable = true,
      },
    },
  },
}

