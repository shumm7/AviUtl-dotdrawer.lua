local version = "1.1"

local function draw_dots(data, size)
	if data==nil then
		return
	end
	if #data==0 then
		return
	end

	local h = #data
	local c = 0
	for i=1, #data do
		c = math.max(c, #data[i])
	end
	local w = c

	local divW, divH = (w * size)/2, (h * size)/2

	obj.setoption("drawtarget", "tempbuffer", w * size, h * size)
	for y=1,h do
		for x=1,#data[y] do
			local d = data[y][x]
			if d~=nil and d~="nil" and d~="" then
				obj.load("figure", "四角形", d)
				obj.drawpoly((x-1)*size-divW,(y-1)*size-divH,0, x*size-divW,(y-1)*size-divH,0, x*size-divW,y*size-divH,0, (x-1)*size-divW,y*size-divH,0)
			end
		end
	end

	obj.load("tempbuffer")
end

return {
	draw_dots = draw_dots,
	version = version
}
