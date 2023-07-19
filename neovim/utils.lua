-- Function to retrieve the filenames of Lua files in a directory and store them in an array
function getLuaFilenames(directory)
  local cmd = io.popen('ls -p "'..directory..'"')
  local output = cmd:read("*a")
  cmd:close()

  local filenames = {}  -- Array to store the filenames

  for filename in output:gmatch("[^\n]+") do
    if filename:match("%.lua$") then
      table.insert(filenames, filename)  -- Add filename to the array
    end
  end

  return filenames
end

-- Return the module table
return {
  getLuaFilenames = getLuaFilenames
}
