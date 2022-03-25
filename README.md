dotdrawerは、ドット絵を描画するだけのシンプルなライブラリです。  

使用例：  
```
size = 10 --1マスのサイズ
data = {
	{"0x000000", "0xffffff", "0x000000"}, --色コードで指定
	{"0xffffff", nil, "0xffffff"},        --nilで透明
	{"0x000000", "0xffffff", "0x000000"}
}
dotdrawer = dofile(obj.getinfo("script_path").."dotdrawer.lua")
dotdrawer.draw_dots(data, size)
```
