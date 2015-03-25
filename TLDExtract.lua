TLDExtract = {}
TLDExtract.__index = TLDExtract

function TLDExtract.create(url)
   local tld = {}             -- our new object
   setmetatable(tld,TLDExtract)  
   tld.url = url      -- initialize our object
   return tld
end

--function to extract top level domain

function TLDExtract:getTld()
	prefix_list={}
	for line in io.lines("filedata.txt") do 
		if not (string.match(line,"^//")) then
			regex=line.."/?$"
			if(string.match(self.url,regex)) then
				prefix_list[string.len(line)]=line
			end
		end
	end
	print(prefix_list[table.maxn(prefix_list)])
end

--t = TLDExtract.create("http://forums.bbc.co.uk/")
--t:getTld()













