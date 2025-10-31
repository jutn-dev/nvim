return {
  {
	"mfussenegger/nvim-dap",
	config = function ()
	  local dap = require("dap")
	  dap.adapters.gdb = {
	  type = "executable",
	  command = "gdb",
	  args = { "--interpreter=dap", "--eval-command", "set print pretty on"
		}
	  }
  
  	dap.configurations.c = {
  		{
		name = "Launch",
		type = "gdb",
		progrequest = "launch",
		program = function()
		  return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		cwd = "${workspaceFolder}",
		stopAtBeginningOfMainSubprogram = false,
	  },
  {
    name = "Select and attach to process",
    type = "gdb",
    request = "attach",
    program = function()
       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    pid = function()
       local name = vim.fn.input('Executable name (filter): ')
       return require("dap.utils").pick_process({ filter = name })
    end,
    cwd = '${workspaceFolder}'
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'gdb',
    request = 'attach',
    target = 'localhost:1234',
    program = function()
       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		  end,
		  cwd = '${workspaceFolder}'
		},
	  }
	  dap.configurations.cpp = dap.configurations.c
	  dap.configurations.rust = dap.configurations.c
	end
  },
  {
	"rcarriga/nvim-dap-ui",
	dependencies =
	 {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio"
	},
	config = function ()
	  require("dapui").setup()
	  local dap, dapui = require("dap"), require("dapui")
	  dap.listeners.before.attach.dapui_config = function()
		dapui.open()
	  end
	  dap.listeners.before.launch.dapui_config = function()
		dapui.open()
	  end
	  dap.listeners.before.event_terminated.dapui_config = function()
		dapui.close()
	  end
	  dap.listeners.before.event_exited.dapui_config = function()
		dapui.close()
	  end
	  vim.keymap.set("n","<F5>", dap.continue)
	  vim.keymap.set("n","<F6>", dap.step_over)
	  vim.keymap.set("n","<F7>", dap.step_into)
	  vim.keymap.set("n","<F8>", dap.step_over)
	end
  }
}

