Vim�UnDo� ���,Q,2���i���^�P�����u��1   1                                   Ro�N    _�                           ����                                                                                                                                                                                                                                                                                                                                                             Ro��     �                ;local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Ro��     �                *RPROMPT='${return_status}%{$reset_color%}'5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Ro�_     �      
          	OFFLINE='�      
          5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                       	           V        Ro�c     �                ONLINE='%{%F{green}%}◉'   OFFLINE='%{%F{red}%}⦿'5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                  V        Ro�k     �              5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                            	           	           V        Ro�m     �             5�_�   
                       ����                                                                                                                                                                                                                                                                                                                                                  V        Ro�s     �         !    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Ro��     �                  }�                function battery_charge �         #       �         "    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        Ro��    �         &        }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Ro��     �         &       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Ro��     �         '      ,RPROMPT='$(prompt_online) $(battery_charge)'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Ro��     �   "   $            }�                  if [}�                function prompt_online(�         )       �         (    5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                             Ro��     �   "   $   0        }5�_�                    "       ����                                                                                                                                                                                                                                                                                                                                                             Ro��    �   !   #   0            fi5�_�                      
    ����                                                                                                                                                                                                                                                                                                                                                             Ro��    �         0        echo `~/bin/batcharge.py`5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Ro�M    �          0       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Ro�K     �         0      ^if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then   	export TERM=gnome-256color   1elif infocmp xterm-256color >/dev/null 2>&1; then   	export TERM=xterm-256color   fi5�_�                      
    ����                                                                                                                                                                                                                                                                                                                                                             Ro�     �         0        echo `.bin/batcharge.py`5�_�                        	    ����                                                                                                                                                                                                                                                                                                                                                             Ro�"    �         0        echo `/bin/batcharge.py`5�_�   
                        ����                                                                                                                                                                                                                                                                                                                            	           	           V        Ro�q     �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Ro�]     �      	         *RPROMPT='${return_status}%{$reset_color%}'5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Ro��     �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Ro��     �               5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             Ro��     �                 5��