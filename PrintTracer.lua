local oldprint = print
print = function(text, ...)
    for n=1,select('#', ...) do
        local e = select(n, ...)
        text = text.." "..tostring(e)
    end
    local source = gsub(strtrim(debugstack(2,1,0),".\n"),"Interface\\AddOns\\","")
    text = "PT: print(\""..text.."\") called from "..source
    return oldprint(text)
end