package = "lua-docx"
version = "0.1-0"
source = {
   url = "git://github.com/paragasu/lua-docx.git",
   tag = "v0.1-0"
}
description = {
   summary  = "Lua document to generate doc from template file",
   homepage = "https://github.com/paragasu/lua-docx",
   license  = "MIT",
   maintainer = "Jeffry L. <paragasu@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["docx"] = "docx.lua"
   }
}