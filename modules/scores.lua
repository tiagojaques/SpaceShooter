-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.

M = {}

M.Score = 1

M.APP_NAME = "SpaceShooter"
M.SAVE_FILE_NAME = "scoreboard"

function M.load_file()
	local file = sys.load(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME))
	
	M.Score = file.v1
end

function M.save_file()
	local file = {
		v1 = M.Score,
	}

	sys.save(sys.get_save_file(M.APP_NAME, M.SAVE_FILE_NAME), file)
end

return M