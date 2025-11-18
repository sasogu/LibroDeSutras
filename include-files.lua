-- include-files.lua
-- https://github.com/pandoc/lua-filters/blob/master/include-files/include-files.lua

local function include_file(file)
  local fh = io.open(file, "r")
  if not fh then
    io.stderr:write("Cannot open file: " .. file .. "\n")
    os.exit(1)
  end
  local content = fh:read("*a")
  fh:close()
  return content
end

local function is_include(format)
  -- The raw block/inline format comes in as "include" from the Markdown fence
  -- ```{=include}```, so match that value instead of looking for the leading '='.
  return format and format:match("include")
end

function RawBlock(el)
  if is_include(el.format) then
    local file = el.text:match("^%s*(.-)%s*$")
    return pandoc.read(include_file(file), "markdown").blocks
  end
end

function RawInline(el)
  if is_include(el.format) then
    local file = el.text:match("^%s*(.-)%s*$")
    return pandoc.read(include_file(file), "markdown").inlines
  end
end
