" cscope
set cscopetag
cscope add /home/yam/Workspace/5.0.0_r3/cscope.out
nmap gf :cs find f \/<cfile><CR>
nmap gh :cs find f \/%:t:r.h<CR>
nmap gc :cs find f \/%:t:r.c<CR>
