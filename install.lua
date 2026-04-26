
local startupURL = "https://raw.githubusercontent.com/RinMar/Draconic-ComputerCraft-Program/master/startup.lua"
local startup
local startupFile

function saveFile(name, url)
  local conn = http.get(url)
  local content = conn.readAll()
  local file = fs.open(name, "w")
  file.write(content)
  file.close()
  end

saveFile("startup.lua", startupURL)
