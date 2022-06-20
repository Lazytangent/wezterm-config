local utils = {}

local LEADER = "LEADER"

utils.add_leader_keybind = function(keys_table, bind)
  local keybind = bind or {}
  keybind.mods = bind.mods or LEADER

  table.insert(keys_table, keybind)
end

utils.remove_file = function(s)
  return string.gsub(s, "file://(.*)", "%1")
end

utils.replace_home = function(s)
  return string.gsub(s, "^/Users/petermai(.*)", "~%1")
end

utils.pad_with_space = function(s)
  return s .. " "
end

utils.include_copy_prefix = function(s, original)
  if string.find(original, "Copy mode") ~= nil then
    return "Copy Mode: " .. s
  end

  return s
end

utils.dump = function(o)
  if type(o) == "table" then
    local s = "{ "
    for k, v in pairs(o) do
      if type(k) ~= 'number' then k = '"' .. k ..'"' end
      s = s .. '[' .. k .. ']' .. utils.dump(v) .. ','
    end
    return s .. '}'
  else
    return tostring(o)
  end
end

return utils
