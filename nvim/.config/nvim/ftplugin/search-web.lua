-- Neovim completion for search-web CLI
local fn = vim.fn

-- Main completion function
local function complete(arg_lead, cmd, parsed)
  local suggestions = {}

  -- Parse common flags
  local flags = {
    type = {"text", "news", "videos", "books", "images"},
    region = {"en-us", "zh-cn", "wt-wt", "ja-jp", "de-de"},
    timelimit = {"d", "w", "m", "y"},
    provider = {"ddgs", "searxng", "google", "bing", "duckduckgo"},
    size = {"Small", "Medium", "Large", "Wallpaper"},
    color = {"Red", "Blue", "Green", "Yellow", "Monochrome"},
    type_image = {"photo", "clipart", "gif", "transparent", "line"},
    license = {"any", "Public", "Share", "ShareCommercially", "Modify", "ModifyCommercially"},
  }

  -- Check if current word is a flag value
  local word = parsed.args[parsed_idx]
  if flags.type[word] then
    table.insert(suggestions, word)
  elseif flags.region[word] then
    table.insert(suggestions, word)
  elseif flags.timelimit[word] then
    table.insert(suggestions, word)
  elseif flags.provider[word] then
    table.insert(suggestions, word)
  elseif flags.size[word] then
    table.insert(suggestions, word)
  elseif flags.color[word] then
    table.insert(suggestions, word)
  elseif flags.type_image[word] then
    table.insert(suggestions, word)
  elseif flags.license[word] then
    table.insert(suggestions, word)
  end

  -- Suggest flags if word starts with --
  if string.sub(word, 1, 2) == "--" then
    for flag, _ in pairs(flags) do
      for _, v in ipairs(flag) do
        if vim.startswith(v, word:sub(3)) then
          table.insert(suggestions, v)
        end
      end
    end
  end

  return suggestions
end

-- Parse command arguments
local function parse_cmd(cmd)
  local parsed = {args = {}, cmd = "", parsed_idx = 1}

  for i, arg in ipairs(cmd) do
    if arg:sub(1, 1) == "-" and i < #cmd then
      -- It's a flag starting with next arg
      table.insert(parsed.args, arg)
    else
      parsed.cmd = arg
      parsed.parsed_idx = i
    end
  end

  return parsed
end

-- Register completion
fn.register("command", "complete", {
  desc = "Complete search-web arguments",
  callback = function(arg_lead, cmd_line, cursor_pos)
    local parsed = parse_cmd(cmd_line)
    local suggestions = complete(arg_lead, cmd_line, parsed)
    fn.complete(suggestions)
  end,
  force = true
})

-- Optional: Create keybinding for quick search
vim.api.nvim_set_keymap("n", "<leader>s", function()
  vim.ui.input("search-web ", {prompt = "Search web: "})
end, {silent = true})
