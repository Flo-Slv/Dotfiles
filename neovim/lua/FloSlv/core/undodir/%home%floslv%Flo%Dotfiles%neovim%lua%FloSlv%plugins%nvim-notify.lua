Vim�UnDo� /��?y]��`����p֒^�Zi�k�a���l�                                     eW>    _�                             ����                                                                                                                                                                                                                                                                                                                                                             eW     �                   �               5��                                          �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             eW    �                {5��                                                  5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        eW=    �             	     init = function()   <    -- when noice is not enabled, install notify on VeryLazy   (    local Util = require("lazyvim.util")   &    if not Util.has("noice.nvim") then   "      Util.on_very_lazy(function()   &        vim.notify = require("notify")   
      end)       end     end,5��           	               �                    5��