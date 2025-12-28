local function test(x, y)
	if x > y then
		print("x>y")
	else
		print("y>=x")
	end
	local unused = 10
	for i = 1, 3 do
		print(i)
	end
end

test(2, 1)
