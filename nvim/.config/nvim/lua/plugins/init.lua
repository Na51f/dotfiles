-- Load all plugin configurations
-- Each plugin returns a table compatible with lze

-- Load configs via dofile to bypass lze's require interception
local function load_config(name)
  local path = vim.fn.stdpath("config") .. "/lua/plugins/" .. name .. ".lua"
  local file = io.open(path, "r")
  if not file then
    error("Could not open " .. path)
  end
  local content = file:read("*all")
  file:close()
  return load(content, "=" .. name, "t", _G)()
end

-- Load all plugin configurations
-- Each plugin returns a table compatible with lze

-- Load configs via dofile to bypass lze's require interception
local function load_config(name)
  local path = vim.fn.stdpath("config") .. "/lua/plugins/" .. name .. ".lua"
  local file = io.open(path, "r")
  if not file then
    error("Could not open " .. path)
  end
  local content = file:read("*all")
  file:close()
  return load(content, "=" .. name, "t", _G)()
end

-- Load plugins with nvim-cmp for completion
local plugins = {
  load_config("nvim-cmp"),  -- nvim-cmp completion
  load_config("lsp"),
  load_config("mini-pick"),
  load_config("oil"),
  load_config("obsidian"),
}

return plugins
