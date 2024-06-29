local M = {}
function M.insert_current_date()
  local date = os.date("!%Y-%m-%dT%H:%M:%SZ")
  vim.api.nvim_put({ date }, "c", true, true)
end
return M
