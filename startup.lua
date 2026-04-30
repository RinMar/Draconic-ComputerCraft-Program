local libURL = "https://raw.githubusercontent.com/RinMar/Draconic-ComputerCraft-Program/main/lib/f.lua"
local libURL2 = "https://raw.githubusercontent.com/RinMar/Draconic-ComputerCraft-Program/main/lib/button.lua"
local startupURL = "https://raw.githubusercontent.com/RinMar/Draconic-ComputerCraft-Program/main/reactor.lua"
local lib, lib2, startup
local libFile, lib2File, startupFile
 
fs.makeDir("lib")

function saveFile(name, url)
    local conn = http.get(url)
    local content = conn.readAll()
    if fs.exists(name) == false then
        local file = fs.open(name, "w")
        file.write(content)
        file.close()
        print(name, " downloaded")
    else
        local file1 = fs.open(name, "r")
        local f = file1.readAll()
        if libFile ~= f then
            file1.close()
            local file2 = fs.open(name, "w")
            file2.write(libFile)
            file2.close()
           
            print(name," updating...")
        else
            file1.close()
            print(name, "up to date")
        end
    end
 end

saveFile("lib/f", libURL)
saveFile("lib/button", libURL2)
saveFile("reactor", startupURL)
 
print("Finished")
print("Starting Program")
sleep(5)
 
shell.run("reactor")
