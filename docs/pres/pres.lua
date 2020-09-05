--local h = require'bfredl.moonwatch'
local m = dofile'/home/bjorn/config2/nvim/lua/bfredl/moonwatch.lua'
_G.m = m
local a = bfredl.a

local sf = m.float
_G.sf = sf

local s = m.make_show("Neovim 0.5: a vision", _G.s)

m.prepare()
m.cls()

s:slide("intro", function()
  --m.header 'intro'
  sf {r=3, w=80, h=13, cat="sunjon.cat", blend=10}
end)

s:slide("toc", function()
  m.header 'Table of contents'
  sf {r=3, text=[[
- whois @bfredl         .
- Neovim 0.4: what works
  - grids
  - and more grids
- Neovim 0.5: a vision
  - ftplugin 2.0: LSP and tree-sitter
  - dependency management
  - the general X:Y problem
- Final remarks]]}

end)

s:slide("bfredl", function()
  m.header 'whomi'
  sf {r=3, text=[[
- PhD student in deep learning stuff (supposed to be)
- Neovim contributor since 2014
  - plan was to "do" pynvim only
  - but got addicted to C coding
- Fall 2020: 50% Neovim "employee"
  - 0.5 release manager (with justinmk, jamessan)
  - residental madman in charge]]}
end)

s:slide("neo4", function()
  m.header 'Neovim 0.4'
  sf {r=3, text=[[
- was releaseed on XX (patch 0.4.4 on YY)
- luv event loop (lua code can async io directly)
  - @andreypopp and the luv maintainers
- ext_multigrid (GSOC 2019 @coditiva née @utkarshme)
- nvim_open_win(), 'winblend' (floats, @bfredl :)
- MORE]]}

end)

s:slide("multigrid", function()
  m.header 'ext_multigrid/floats'
  sf {r=3, text=[[
- These slides are built using floats :]]}

  sf {c=10, r=5, w=80, h=30, cat="smile2.cat", blend=10, bg="#330033"}
end)

s:show (s.cur or "intro")
_G.s = s
