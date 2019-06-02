map = {}

local this = map
local count = 0
function this:new(o)
  o =o or {}
  setmetatable(o,self)
  self.__index = self
  return o
end

--插入
function this:insert(k,v)

  if nil == self[k] then
    self[k] = v
    count = count + 1
  end
end

--将bean={ a=1,b=2}型的bean转为map
function this:insertBean(bean)
  for k,v in pairs(bean) do
    if nil == self[k] then
      self[k] = v
      count = count + 1
    end
  end
end

--移除一个
function this:remove(k)
  if nil ~= self[k] then
    self[k] = nil
    if count >0 then
      count = count - 1
    end
  end
end

--根据key得值
function this:getValue(k)
  local value = nil
  if nil ~= self[k] then
    value = self[k]
  end
  return value
end

--清空map
function this:clear()
  for k,_ in pairs(self) do
    if nil ~= self[k] then
      self[k] = nil
    end
  end
  count = 0
end

--获得总数
function this:getSize()
  return count
end

--是否包含
function this:isContains(k)
  if (nil ~= self[k]) then
    return true
  else
    return false
  end
end

--显示该map
function this:showThis()
  for k,v in pairs(self) do
    print(k.." : "..v)
  end
end

return this





