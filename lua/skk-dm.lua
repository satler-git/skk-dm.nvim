local async = require("plenary.async")

-- @param dlist { dictionaries: string[], prefix: string }
local function setup(config)
	local p = config.prefix

	for di in config.dictionaries do
		if not check_downloaded(di, p) then
			download(di, p)
		end
	end
end

-- @param prefix string
-- @param dict string
-- @return boolean
function check_downloaded(dict, prefix)
	-- check
end

-- @param prefix string
-- @param dict string
function download(dict, prefix)
	-- dl
end

-- @param prefix string
-- @return string[]
local function pathes(prefix)
	-- ユーザー向けのパス化する関数
end

-- @param prefix string
-- @param dict string
-- @return string
function Hashlize(dict, prefix)
	-- 管理するファイルをurlから導く
	-- /string$な文字列を得る
	local file_name = string.match(dict, ".*/(.*)$")
	return prefix .. file_name
end

return {
	pathes = pathes,
	setup = setup,
}
