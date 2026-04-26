
local libURL = "https://raw.githubusercontent.com/RinMar/Draconic-ComputerCraft-Program/master/lib/f.lua"
local reactorURL = "https://raw.githubusercontent.com/RinMar/Draconic-ComputerCraft-Program/master/reactor.lua"
local startupURL = "https://raw.githubusercontent.com/RinMar/Draconic-ComputerCraft-Program/master/startup.lua"
local lib, startup, reactor
local libFile, startupFile, reactorFile

fs.makeDir("lib")

function saveFiles(name, url)
  local conn = http.get(url)
  local content = conn.readAll()
  local file = fs.open(name, "w")
  file.write(content)
  file.close()
  end

saveFile("lib/f", libURL)
saveFile("startup.lua", startupURL)
saveFile("reactor.lua", reactorURL)
