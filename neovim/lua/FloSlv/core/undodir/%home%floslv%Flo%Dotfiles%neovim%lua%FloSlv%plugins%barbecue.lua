Vim�UnDo� �JF#o�v�Z��ՏJW+w�fN�M
�L   #       show_basename = false,            7       7   7   7    ech    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e^�    �                   �               5��                                                  �                                        �       5�_�                       9    ����                                                                                                                                                                                                                                                                                                                                                             e^�    �               9    "nvim-tree/nvim-web-devicons", -- optional dependency5��       8                  �                      �       7                  �                      �       6                  �                      �       5                  �                      �       4                  �                      �       3                  �                      �       2                  �                      �       1                  �                      �       0                  �                      �       /                  �                      �       .                  �                      �       -                  �                      �       ,                  �                      �       +                  �                      �       *                  �                      �       )                  �                      �       (                  �                      �       '                  �                      �       &                  �                      �       %                  �                      �       $                  �                      �       #                  �                      �       "                  �                      5�_�                   
        ����                                                                                                                                                                                                                                                                                                                                                             eba     �   
   �         		-- �             �   
          5��    
                      �                      �    
              �      �               0      5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                             ebd    �   
   �   �   �   B		-- ---Whether to attach navic to language servers automatically.     ---     ---@type boolean     attach_navic = true,       .  ---Whether to create winbar updater autocmd.     ---     ---@type boolean     create_autocmd = true,       "  ---Buftypes to enable winbar in.     ---     ---@type string[]     include_buftypes = { "" },       '  ---Filetypes not to enable winbar in.     ---     ---@type string[]   0  exclude_filetypes = { "netrw", "toggleterm" },         modifiers = {   -    ---Filename modifiers applied to dirname.       ---   &    ---See: `:help filename-modifiers`       ---       ---@type string       dirname = ":~:.",       .    ---Filename modifiers applied to basename.       ---   &    ---See: `:help filename-modifiers`       ---       ---@type string       basename = "",     },       %  ---Whether to display path to file.     ---     ---@type boolean     show_dirname = true,       "  ---Whether to display file name.     ---     ---@type boolean     show_basename = true,       I  ---Whether to replace file icon with the modified symbol when buffer is     ---modified.     ---     ---@type boolean     show_modified = false,       !  ---Get modified status of file.     ---   K  ---NOTE: This can be used to get file modified status from SCM (e.g. git)     ---   &  ---@type fun(bufnr: number): boolean   ?  modified = function(bufnr) return vim.bo[bufnr].modified end,       -  ---Whether to show/use navic in the winbar.     ---     ---@type boolean     show_navic = true,       )  ---Get leading custom section contents.     ---   P  ---NOTE: This function shouldn't do any expensive actions as it is run on each     ---render.     ---   L  ---@type fun(bufnr: number, winnr: number): barbecue.Config.custom_section   2  lead_custom_section = function() return " " end,       *  ---@alias barbecue.Config.custom_section     ---|string # Literal string.   x  ---|{ [1]: string, [2]: string? }[] # List-like table of `[text, highlight?]` tuples in which `highlight` is optional.     ---   !  ---Get custom section contents.     ---   P  ---NOTE: This function shouldn't do any expensive actions as it is run on each     ---render.     ---   L  ---@type fun(bufnr: number, winnr: number): barbecue.Config.custom_section   -  custom_section = function() return " " end,       !  ---@alias barbecue.Config.theme   V  ---|'"auto"' # Use your current colorscheme's theme or generate a theme based on it.   ;  ---|string # Theme located under `barbecue.theme` module.   M  ---|barbecue.Theme # Same as '"auto"' but override it with the given table.     ---   B  ---Theme to be used for generating highlight groups dynamically.     ---      ---@type barbecue.Config.theme     theme = "auto",       9  ---Whether context text should follow its icon's color.     ---     ---@type boolean   $  context_follow_icon_color = false,         symbols = {       ---Modification indicator.       ---       ---@type string       modified = "●",           ---Truncation indicator.       ---       ---@type string       ellipsis = "…",           ---Entry separator.       ---       ---@type string       separator = "",     },       !  ---@alias barbecue.Config.kinds   !  ---|false # Disable kind icons.   3  ---|table<string, string> # Type to icon mapping.     ---   -  ---Icons for different context entry kinds.     ---      ---@type barbecue.Config.kinds     kinds = {       File = "",       Module = "",       Namespace = "",       Package = "",       Class = "",       Method = "",       Property = "",       Field = "",       Constructor = "",       Enum = "",       Interface = "",       Function = "",       Variable = "",       Constant = "",       String = "",       Number = "",       Boolean = "",       Array = "",       Object = "",       Key = "",       Null = "",       EnumMember = "",       Struct = "",       Event = "",       Operator = "",       TypeParameter = "",     },5��    
       �       �      �       1      Y      5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             ebj     �   	   
              -- configurations go here5��    	                      �                      5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             ebx     �   
                 ---5��    
                      �                      5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             eby     �                    ---5��                          P                     5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             eb|     �                    ---5��                          �                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             eb�     �                    ---5��                                               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             eb�     �                	      ---5��                          �      
               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             eb�     �                	      ---5��                          �      
               5�_�                    !        ����                                                                                                                                                                                                                                                                                                                                                             eb�     �       !          	      ---5��                                 
               5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   !   "          	      ---5��    !                      D      
               5�_�                    '        ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   &   '              ---5��    &                      �                     5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   *   +              ---5��    *                      �                     5�_�                    0        ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   /   0              ---5��    /                      �                     5�_�                    =        ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   <   =              ---5��    <                      �                     5�_�                    >       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   =   ?   �          show_navic = true,5��    =                                        �    =                                          �    =                                           �    =                    �                    5�_�                    A       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   @   A              ---5��    @                      3                     5�_�                    N       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   M   N              ---5��    M                      !                     5�_�                    a       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   `   a              ---5��    `                      �
                     5�_�                    \       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   [   \              ---5��    [                      m
                     5�_�                    Z       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   Y   Z              ---5��    Y                       
                     5�_�                    d       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   c   d          	      ---5��    c                      G      
               5�_�                    h       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   g   h          	      ---5��    g                      �      
               5�_�                    l       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   k   l          	      ---5��    k                      �      
               5�_�                    s       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   r   s              ---5��    r                      �                     5�_�                     t       ����                                                                                                                                                                                                                                                                                                                                                             eb�    �   s   t              ---5��    s                      �                     5�_�      !               (       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   '   )   �          show_dirname = true,5��    '                    �                    5�_�       "           !   ,       ����                                                                                                                                                                                                                                                                                                                                                             eb�     �   +   -   �          show_basename = true,5��    +                                        5�_�   !   #           "   C       ����                                                                                                                                                                                                                                                                                                                                                             ec
     �   B   C              ---5��    B                      �                     5�_�   "   $           #   a        ����                                                                                                                                                                                                                                                                                                                            a          m          V       ec     �   `   a              symbols = {          ---Modification indicator.         ---@type string         modified = "●",             ---Truncation indicator.         ---@type string         ellipsis = "…",             ---Entry separator.         ---@type string         separator = "",       },5��    `                            �               5�_�   #   %           $   a        ����                                                                                                                                                                                                                                                                                                                            a          a          V       ec     �   `   a           5��    `                                           5�_�   $   &           %   a        ����                                                                                                                                                                                                                                                                                                                            a           �          V       ec"     �   `   a       !   #    ---@alias barbecue.Config.kinds   #    ---|false # Disable kind icons.   5    ---|table<string, string> # Type to icon mapping.   /    ---Icons for different context entry kinds.   "    ---@type barbecue.Config.kinds       kinds = {         File = "",         Module = "",         Namespace = "",         Package = "",         Class = "",         Method = "",         Property = "",         Field = "",         Constructor = "",         Enum = "",         Interface = "",         Function = "",         Variable = "",         Constant = "",         String = "",         Number = "",         Boolean = "",         Array = "",         Object = "",         Key = "",         Null = "",         EnumMember = "",         Struct = "",         Event = "",         Operator = "",         TypeParameter = "",       },5��    `       !                     7              5�_�   %   '           &   `        ����                                                                                                                                                                                                                                                                                                                            a           a          V       ec$     �   _   `           5��    _                                           5�_�   &   (           '   ]        ����                                                                                                                                                                                                                                                                                                                            ]          _          V       ec(     �   \   ]          ;    ---Whether context text should follow its icon's color.       ---@type boolean   &    context_follow_icon_color = false,5��    \                      �
      x               5�_�   '   )           (   \        ����                                                                                                                                                                                                                                                                                                                            ]          ]          V       ec)     �   [   \           5��    [                      �
                     5�_�   (   *           )   U        ����                                                                                                                                                                                                                                                                                                                            U          [          V       ec,     �   T   U          #    ---@alias barbecue.Config.theme   X    ---|'"auto"' # Use your current colorscheme's theme or generate a theme based on it.   =    ---|string # Theme located under `barbecue.theme` module.   O    ---|barbecue.Theme # Same as '"auto"' but override it with the given table.   D    ---Theme to be used for generating highlight groups dynamically.   "    ---@type barbecue.Config.theme       theme = "auto",5��    T                      	      �              5�_�   )   +           *   T        ����                                                                                                                                                                                                                                                                                                                            U          U          V       ec,     �   S   T           5��    S                      	                     5�_�   *   ,           +   H        ����                                                                                                                                                                                                                                                                                                                            H          S          V       ec6     �   G   H          ,    ---@alias barbecue.Config.custom_section        ---|string # Literal string.   z    ---|{ [1]: string, [2]: string? }[] # List-like table of `[text, highlight?]` tuples in which `highlight` is optional.       ---   #    ---Get custom section contents.   R    ---NOTE: This function shouldn't do any expensive actions as it is run on each       ---render.       ---   N    ---@type fun(bufnr: number, winnr: number): barbecue.Config.custom_section       custom_section = function()         return " "       end,5��    G                      &      �              5�_�   +   -           ,   G        ����                                                                                                                                                                                                                                                                                                                            H          H          V       ec7     �   F   G           5��    F                      %                     5�_�   ,   .           -   @        ����                                                                                                                                                                                                                                                                                                                            @          F          V       ec;     �   ?   @          +    ---Get leading custom section contents.   R    ---NOTE: This function shouldn't do any expensive actions as it is run on each       ---render.   N    ---@type fun(bufnr: number, winnr: number): barbecue.Config.custom_section   $    lead_custom_section = function()         return " "       end,5��    ?                      	                    5�_�   -   /           .   ?        ����                                                                                                                                                                                                                                                                                                                            @          @          V       ec=     �   >   ?           5��    >                                           5�_�   .   0           /   3       ����                                                                                                                                                                                                                                                                                                                            :          3          V       ecA     �   2   3          #    ---Get modified status of file.       ---   M    ---NOTE: This can be used to get file modified status from SCM (e.g. git)       ---   (    ---@type fun(bufnr: number): boolean       modified = function(bufnr)   #      return vim.bo[bufnr].modified       end,5��    2                      �      �               5�_�   /   1           0   2        ����                                                                                                                                                                                                                                                                                                                            3          3          V       ecB     �   1   2           5��    1                      �                     5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                                       $           V        ecI     �                    modifiers = {   /      ---Filename modifiers applied to dirname.   (      ---See: `:help filename-modifiers`         ---@type string         dirname = ":~:.",       0      ---Filename modifiers applied to basename.   (      ---See: `:help filename-modifiers`         ---@type string         basename = "",       },5��                          P      &              5�_�   1   3           2           ����                                                                                                                                                                                                                                                                                                                                                  V        ecJ     �                 5��                          O                     5�_�   2   4           3           ����                                                                                                                                                                                                                                                                                                                                                  V        ecQ     �                $    ---Buftypes to enable winbar in.       ---@type string[]       include_buftypes = { "" },5��                          �      Z               5�_�   3   5           4           ����                                                                                                                                                                                                                                                                                                                                                  V        ecR     �                 5��                          �                     5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                  V        ecU     �                0    ---Whether to create winbar updater autocmd.       ---@type boolean       create_autocmd = true,5��                                a               5�_�   5   7           6           ����                                                                                                                                                                                                                                                                                                                                                  V        ecV    �                 5��                                               5�_�   6               7          ����                                                                                                                                                                                                                                                                                                                                                             ecg    �         #          show_basename = false,5��                        9                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             eb�     �              5��                          �                     5�_�                   
        ����                                                                                                                                                                                                                                                                                                                                                             ebE     �   
            		-- �             �   
         �   		-- {   ?  ---Whether to attach navic to language servers automatically.     ---     ---@type boolean     attach_navic = true,       .  ---Whether to create winbar updater autocmd.     ---     ---@type boolean     create_autocmd = true,       "  ---Buftypes to enable winbar in.     ---     ---@type string[]     include_buftypes = { "" },       '  ---Filetypes not to enable winbar in.     ---     ---@type string[]   0  exclude_filetypes = { "netrw", "toggleterm" },         modifiers = {   -    ---Filename modifiers applied to dirname.       ---   &    ---See: `:help filename-modifiers`       ---       ---@type string       dirname = ":~:.",       .    ---Filename modifiers applied to basename.       ---   &    ---See: `:help filename-modifiers`       ---       ---@type string       basename = "",     },       %  ---Whether to display path to file.     ---     ---@type boolean     show_dirname = true,       "  ---Whether to display file name.     ---     ---@type boolean     show_basename = true,       I  ---Whether to replace file icon with the modified symbol when buffer is     ---modified.     ---     ---@type boolean     show_modified = false,       !  ---Get modified status of file.     ---   K  ---NOTE: This can be used to get file modified status from SCM (e.g. git)     ---   &  ---@type fun(bufnr: number): boolean   ?  modified = function(bufnr) return vim.bo[bufnr].modified end,       -  ---Whether to show/use navic in the winbar.     ---     ---@type boolean     show_navic = true,       )  ---Get leading custom section contents.     ---   P  ---NOTE: This function shouldn't do any expensive actions as it is run on each     ---render.     ---   L  ---@type fun(bufnr: number, winnr: number): barbecue.Config.custom_section   2  lead_custom_section = function() return " " end,       *  ---@alias barbecue.Config.custom_section     ---|string # Literal string.   x  ---|{ [1]: string, [2]: string? }[] # List-like table of `[text, highlight?]` tuples in which `highlight` is optional.     ---   !  ---Get custom section contents.     ---   P  ---NOTE: This function shouldn't do any expensive actions as it is run on each     ---render.     ---   L  ---@type fun(bufnr: number, winnr: number): barbecue.Config.custom_section   -  custom_section = function() return " " end,       !  ---@alias barbecue.Config.theme   V  ---|'"auto"' # Use your current colorscheme's theme or generate a theme based on it.   ;  ---|string # Theme located under `barbecue.theme` module.   M  ---|barbecue.Theme # Same as '"auto"' but override it with the given table.     ---   B  ---Theme to be used for generating highlight groups dynamically.     ---      ---@type barbecue.Config.theme     theme = "auto",       9  ---Whether context text should follow its icon's color.     ---     ---@type boolean   $  context_follow_icon_color = false,         symbols = {       ---Modification indicator.       ---       ---@type string       modified = "●",           ---Truncation indicator.       ---       ---@type string       ellipsis = "…",           ---Entry separator.       ---       ---@type string       separator = "",     },       !  ---@alias barbecue.Config.kinds   !  ---|false # Disable kind icons.   3  ---|table<string, string> # Type to icon mapping.     ---   -  ---Icons for different context entry kinds.     ---      ---@type barbecue.Config.kinds     kinds = {       File = "",       Module = "",       Namespace = "",       Package = "",       Class = "",       Method = "",       Property = "",       Field = "",       Constructor = "",       Enum = "",       Interface = "",       Function = "",       Variable = "",       Constant = "",       String = "",       Number = "",       Boolean = "",       Array = "",       Object = "",       Key = "",       Null = "",       EnumMember = "",       Struct = "",       Event = "",       Operator = "",       TypeParameter = "",     },   }5��    
                      �                      �    
              �      �               6      5�_�                     �        ����                                                                                                                                                                                                                                                                                                                                                             ebI     �   �   �        5��    �                                           5��