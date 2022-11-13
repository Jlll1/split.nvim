local M = {}

local function split(sequence, replace_with)
  local search_reg = vim.fn.getreg('/')
  local cursor = vim.api.nvim_win_get_cursor(0)
  vim.cmd([[s/\s*]] .. sequence .. [[\s*/]] .. replace_with .. '/g')
  vim.fn.setreg('/', search_reg)
  vim.api.nvim_win_set_cursor(0, cursor)
end

function M.split_on(sequence)
  split(sequence, '\r')
end

function M.split_before(sequence)
  split(sequence, '\r' .. sequence)
end

function M.split_after(sequence)
  split(sequence, sequence .. '\r')
end

return M
