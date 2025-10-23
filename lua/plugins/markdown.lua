return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons", -- Optional: for icons
    },
    ft = { "markdown" }, -- Only load for markdown files
    opts = {
      -- Render styles
      heading = {
        -- Enable heading icons
        enabled = true,
        -- Add icons before headings
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        -- Highlight groups for each heading level
        backgrounds = {
          "RenderMarkdownH1Bg",
          "RenderMarkdownH2Bg",
          "RenderMarkdownH3Bg",
          "RenderMarkdownH4Bg",
          "RenderMarkdownH5Bg",
          "RenderMarkdownH6Bg",
        },
      },
      code = {
        -- Enable code block rendering
        enabled = true,
        -- Icon to show before code blocks
        sign = true,
        -- Style for code blocks
        style = "full", -- 'full' | 'normal' | 'language' | 'none'
        -- Width of code blocks
        width = "block", -- 'full' | 'block'
        -- Highlight group for code blocks
        highlight = "RenderMarkdownCode",
      },
      bullet = {
        -- Enable bullet point rendering
        enabled = true,
        -- Icons for different list levels
        icons = { "●", "○", "◆", "◇" },
      },
      -- Checkbox rendering
      checkbox = {
        enabled = true,
        unchecked = { icon = "󰄱 " },
        checked = { icon = "󰱒 " },
      },
      -- Quote block rendering
      quote = {
        enabled = true,
        icon = "▋",
      },
      -- Table rendering
      pipe_table = {
        enabled = true,
        style = "full", -- 'full' | 'normal' | 'none'
      },
      -- Callout rendering (for obsidian-style callouts)
      callout = {
        note = { raw = "[!NOTE]", rendered = "󰋽 Note", highlight = "RenderMarkdownInfo" },
        tip = { raw = "[!TIP]", rendered = "󰌶 Tip", highlight = "RenderMarkdownSuccess" },
        important = { raw = "[!IMPORTANT]", rendered = "󰅾 Important", highlight = "RenderMarkdownHint" },
        warning = { raw = "[!WARNING]", rendered = "󰀪 Warning", highlight = "RenderMarkdownWarn" },
        caution = { raw = "[!CAUTION]", rendered = "󰳦 Caution", highlight = "RenderMarkdownError" },
      },
    },
    config = function(_, opts)
      require("render-markdown").setup(opts)
    end,
  },
}
