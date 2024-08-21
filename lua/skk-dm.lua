local async = require("plenary.async")

-- @param dlist string[]
local function setup(dlist)
	for di in dlist do
		if not check_downloaded(di) then
			download(di)
		end
	end
end

-- @param dict string
-- @return boolean
function check_downloaded(dict)
	-- check
end

-- @param dict string
function download(dict)
	-- dl
end

-- @return string[]
local function pathes()
	-- ユーザー向けのパス化する関数
end

-- @param dict string
-- @return string
function hashlize(dict)
	-- 管理するファイルをurlから導く
end

return {
	pathes = pathes,
	setup = setup,
}
