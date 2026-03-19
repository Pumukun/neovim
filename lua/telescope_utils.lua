local builtin = require("telescope.builtin")
local M = {}

function M.find_files_cpp()
	builtin.find_files({
		prompt_title = "C++ Source Files",
		find_command = { 
			"fd", 
			"--type", "f", 
			"-e", "cpp", 
			"-e", "hpp", 
			"-e", "cc", 
			"-e", "hh", 
			"-e", "c", 
			"-e", "h",
			"-e", "cxx",
			"-e", "hxx",
		},
	})
end

function M.live_grep_cpp()
	builtin.live_grep({
		prompt_title = "Grep (C++ Sources)",
		additional_args = function()
			return {
				"--glob", "*.cpp",
				"--glob", "*.hpp",
				"--glob", "*.c",
				"--glob", "*.h",
				"--glob", "*.cc",
				"--glob", "*.hh",
				"--glob", "*.cxx",
				"--glob", "*.hxx"
			}
		end
	})
end

return M
