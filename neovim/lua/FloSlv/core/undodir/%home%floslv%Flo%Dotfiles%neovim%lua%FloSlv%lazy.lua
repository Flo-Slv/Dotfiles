Vim�UnDo� �W���������`�z�7��g7���hV�M�   M   	{ import = "FloSlv.plugins" },                             eph    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e!/     �         M      ;-- vim.api.nvim_set_hl(0, "LazyNormal", { fg = "#ffffff" })5��                         B      <       9       5�_�                    L        ����                                                                                                                                                                                                                                                                                                                            +           L           V        e!4    �   *   M   M   "     -- ui = {   :  --   -- a number <1 is a percentage., >1 is a fixed size   ,  --   size = { width = 0.8, height = 0.8 },   /  --   wrap = true, -- wrap the lines in the ui   _  --   -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.     --   border = "rounded",   H  --   title = nil, ---@type string only works when border is not "none"   A  --   title_pos = "center", ---@type "center" | "left" | "right"   .  --   -- Show pills on top of the Lazy window   %  --   pills = true, ---@type boolean     --   icons = {     --     cmd = " ",     --     config = "",     --     event = "",     --     ft = " ",     --     init = " ",     --     import = " ",     --     keys = " ",     --     lazy = "󰒲 ",     --     loaded = "●",     --     not_loaded = "○",     --     plugin = " ",     --     runtime = " ",     --     source = " ",     --     start = "",     --     task = " ",     --     list = {     --       "●",     --       "",     --       "★",     --       "‒",     --     },   	  --   },     -- },5��    *       "       "       �      �      �      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             ea     �         M      !      -- disable some rtp plugins5��       	                 �                    5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             ea     �         M      !      -- Disable some rtp plugins5��       !                  �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ea     �      	   M      /    "--branch=stable", -- latest stable release5��                        �                     5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                                             ea     �      	   M      /    "--branch=stable", -- Latest stable release5��       /                                       5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                                                             ea%     �   +   -   M      7    -- a number <1 is a percentage., >1 is a fixed size5��    +                    �                    5�_�      	              ,   7    ����                                                                                                                                                                                                                                                                                                                                                             ea&     �   +   -   M      7    -- A number <1 is a percentage., >1 is a fixed size5��    +   7                  �                     5�_�      
           	   .   ,    ����                                                                                                                                                                                                                                                                                                                                                             ea(     �   -   /   M      ,    wrap = true, -- wrap the lines in the ui5��    -   ,                  V                     5�_�   	              
   .       ����                                                                                                                                                                                                                                                                                                                                                             ea)     �   -   /   M      -    wrap = true, -- wrap the lines in the ui.5��    -                    >                    5�_�   
                 1   E    ����                                                                                                                                                                                                                                                                                                                                                             ea.     �   0   2   M      E    title = nil, ---@type string only works when border is not "none"5��    0   E                                       5�_�                    1   "    ����                                                                                                                                                                                                                                                                                                                                                             ea1     �   0   2   M      F    title = nil, ---@type string only works when border is not "none".5��    0   !                 �                    5�_�                    3   +    ����                                                                                                                                                                                                                                                                                                                                                             ea9    �   2   4   M      +    -- Show pills on top of the Lazy window5��    2   +                  ~                     5�_�                      R    ����                                                                                                                                                                                                                                                                                                                                                             eo�     �         M      ]require("lazy").setup({ { import = "FloSlv.plugins" }, { import = "FloSlv.plugins.lsp" } }, {5��       R                 �                    5�_�                       X    ����                                                                                                                                                                                                                                                                                                                                                             eo�     �         M      `require("lazy").setup({ { import = "FloSlv.plugins" }, { import = "FloSlv.plugins.linter" } }, {5��       X               
   �              
       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ep     �         M      jrequire("lazy").setup({ { import = "FloSlv.plugins" }, { import = "FloSlv.plugins.linter_formatter" } }, {5��                         �                     �                         �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ep	     �         N      S	{ import = "FloSlv.plugins" }, { import = "FloSlv.plugins.linter_formatter" } }, {5��                         �                     �                        �                     5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                                             ep     �         O      4	{ import = "FloSlv.plugins.linter_formatter" } }, {5��       /                  �                     �       /                 �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ep     �         P      	}, {5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ep    �         P      }, {5��                         �                     �                         �                     �                          �                     �                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             epV     �                /	{ import = "FloSlv.plugins.linter_formatter" }5��                          �      0               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             epX     �         P      require("lazy").setup({   { import = "FloSlv.plugins" },�         P      	{ import = "FloSlv.plugins" },5��                          �                     �                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             epZ     �         O      5require("lazy").setup({{ import = "FloSlv.plugins" },   },�         O      },5��       5                  �                     �       4                  �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             epg    �         N      6require("lazy").setup({{ import = "FloSlv.plugins" }},   {�         N      {5��       6                  �                     �       6                  �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             epa    �         N      {�         N      8require("lazy").setup({{ import = "FloSlv.plugins" }}, {5��       6                  �                     �       6                  �                     5�_�                     X    ����                                                                                                                                                                                                                                                                                                                                                             eo�     �         M      :require("lazy").setup({ { import = "FloSlv.plugins" } }, {5��       B                  �                     �       A                  �                     �       @                  �                     �       ?                  �                     �       >                  �                     �       =                  �                     �       <                  �                     �       ;                  �                     �       :                  �                     �       9                  �                     �       8                  �                     �       7                  �                     �       5                  �                     5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                             eo�     �         M      9require("lazy").setup({ { import = "FloSlv.plugins" }}, {5��       5                  �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             eo�    �         M      8require("lazy").setup({{ import = "FloSlv.plugins" }}, {5��                         �                     5�_�                      Y    ����                                                                                                                                                                                                                                                                                                                                                             eo�     �         M      8require("lazy").setup({ { import = "FloSlv.plugins" }, {5��       @                  �                     �       ?                  �                     �       >                  �                     �       =                  �                     �       <                  �                     �       ;                  �                     �       :                  �                     �       9                  �                     �       8                  �                     �       7                  �                     �       7                  �                     �       6                  �                     �       5                  �                     5�_�                       Y    ����                                                                                                                                                                                                                                                                                                                                                             eo�     �         M      >require("lazy").setup({ { import = "FloSlv.plugins" }, { i}, {5��       @                  �                     �       ?                  �                     �       >                  �                     �       =                  �                     �       <                  �                     �       ;                  �                     �       :                  �                     5��