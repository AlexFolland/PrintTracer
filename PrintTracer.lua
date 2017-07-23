local oldprint = print
print = function(text)
    local source = gsub(strtrim(debugstack(2,1,0),".\n"),"Interface\\AddOns\\","")
    text = "PT: print(\""..tostring(text).."\") called from "..source
    return oldprint(text)
end