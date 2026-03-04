local dap = require('dap')
local dapui = require("dapui")

dap.adapters.codelldb = {
	type = 'executable',
	--port = "1234",
	--executable = {
		command = 'C:/Users/g_demchenko/bin/codelldb/adapter/codelldb.exe',
		--args = {
		--	"--port", "1234",
		--},
		deatached = false
	--},
}

-- dap.configurations.cpp = {
-- 	{
-- 		name = "Engine Debug (MSVC PDB)",
-- 		type = "codelldb",
-- 		request = "attach",
-- 		-- Полный или относительный путь до экзешника от корня проекта
-- 		-- Замените {название проекта} на реальное имя папки
-- 		program = "${workspaceFolder}/.build/win-64-Debug-samples-EDL/.bin/engine_launcher.exe",
-- 
-- 		args = {
-- 			--"--livepp", "C:/Program Files/Microsoft Visual Studio/2022/Professional/VC/Tools/MSVC/14.42.34433/bin/Hostx64/x64/cl.exe",
-- 			-- Здесь пути тоже должны быть корректными относительно cwd
-- 			"--project", "${workspaceFolder}/projects/samples/samples.project"
-- 		},
-- 
-- 		-- Устанавливаем рабочую директорию прямо в папку с бинарником
-- 		-- Тогда отладчик автоматически подтянет PDB, лежащие рядом
-- 		cwd = "${workspaceFolder}/.build/win-64-Debug-samples-EDL/.bin/",
-- 
-- 		stopOnEntry = false,
-- 		console = "integratedTerminal",
-- 
-- 		-- Если символы всё равно не подхватятся, можно принудительно указать поиск:
-- 		symbolSearchWidgets = {
-- 			{
-- 				-- Путь к папке с PDB
-- 				searchSource = "${workspaceFolder}/.build/win-64-Debug-samples-EDL/.bin/",
-- 				recursive = true
-- 			}
-- 		},
-- 	},
-- }

dap.configurations.cpp = {
	{
		name = "Simple Test",
		type = "codelldb",
		request = "launch",
		program = "${workspaceFolder}/.build/win-64-Debug-samples-EDL/.bin/engine_launcher.exe",
		args = {
			--"--livepp", "C:/Program Files/Microsoft Visual Studio/2022/Professional/VC/Tools/MSVC/14.42.34433/bin/Hostx64/x64/cl.exe",
			-- Здесь пути тоже должны быть корректными относительно cwd
			"--project", "${workspaceFolder}\\projects\\samples\\samples.project"
		},

		cwd = "${workspaceFolder}\\.build\\win-64-Debug-samples-EDL\\.bin\\", -- папка где лежит exe
		externalConsole = true,
	},
}

table.insert(dap.configurations.cpp, {
	name = "Attach to Engine (Windows)",
	type = "codelldb",
	request = "attach",
	-- Функция для выбора процесса
	pid = function()
		local name = vim.fn.input('Process name: ')
		return require('dap.utils').pick_process({ filter = name })
	end,
	-- Путь к папке, где лежит код (корень проекта)
	cwd = "${workspaceFolder}",
	-- Очень важно для Windows и PDB:
})

dapui.setup({
	-- Настройка расположения окон (почти как в VS)
	layouts = {
		{
			elements = {
				{ id = "scopes", size = 0.25 }, -- Переменные
				{ id = "breakpoints", size = 0.25 }, -- Точки остановки
				{ id = "stacks", size = 0.25 }, -- Стек вызовов
				{ id = "watches", size = 0.25 }, -- Выражения
			},
			position = "left",
			size = 40,
		},
		{
			elements = {
				{ id = "repl", size = 0.5 }, -- Консоль отладчика
				{ id = "console", size = 0.5 }, -- Вывод приложения
			},
			position = "bottom",
			size = 10,
		},
	},
})

-- Автоматика: открываем UI при старте, закрываем при завершении
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='▶️', texthl='', linehl='DebugPointer', numhl=''})
