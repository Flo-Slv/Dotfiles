Vim�UnDo� �U��}���K�r�,��H���µ�b��LG�X      		   
                          c�-�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             c�~�     �              �             5��                                           Q       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c�~�     �             5��                          Q                      5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             c�~�     �                -local cmp_status, cmp = pcall(require, 'cmp')5��                                                �                                              5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             c�~�     �               if not cmp_status then5��                        6                     5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                             c�~�     �                .local tree_status, cmp = pcall(require, 'cmp')5��        )              	   )              	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�~�     �                4local tree_status, cmp = pcall(require, 'nvim-tree')5��                      	                 	       �                                                �                                                �                                                �                                                �                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c�~�     �               require'nvim-tree'.setup({5��                         q                      5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             c�~�     �               require'nvim-tree.setup({5��                        l                     5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             c�~�    �               require'nvim_tree.setup({5��                         a                      �                          `                      5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             c���    �                :local tree_status, nvim_tree = pcall(require, 'nvim-tree')   if not tree_status then   	return   end       nvim_tree.setup({   	sort_by = 'case_sensitive',   		view = {   		adaptive_size = true,   		-- width = 30   	},   	renderer = {   		group_empty = true   	},   	filters = {   		dotfiles = false   	}   })       4-- Autocmd to quit NvimTree when last windows close.   )vim.api.nvim_create_autocmd('BufEnter', {   Y	command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",   	nested = true5��        .               .       �      �      5�_�   
                 	        ����                                                                                                                                                                                                                                                                                                                                                             c�-�     �   	            		�   	          5��    	                      �                      �    	                     �                      �    	                     �                      �    	                    �                     5�_�                    
   	    ����                                                                                                                                                                                                                                                                                                                                                             c�-�     �   	            			side = 5��    	   	                  �                      5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             c�-�     �   	            		side = ""5��    	   
                  �                      5�_�                     
       ����                                                                                                                                                                                                                                                                                                                                                             c�-�    �   	            		side = "right"5��    	                     �                      5��