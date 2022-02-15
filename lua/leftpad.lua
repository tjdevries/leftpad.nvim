return function(str_or_num, padding, char)
  if type(str_or_num) == "string" then
    return string.format("%" .. tostring(padding) .. "s", str_or_num)
  else
    return string.rep(char and tostring(char) or '0', padding - #tostring(str_or_num)) .. tostring(str_or_num)
  end
end
