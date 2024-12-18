function loadchunk(t, path)
    local chunk = loadfile(string.format("%s.lua", path))
    chunk("AutoSell", t)
end
