map = {}

local this = map
local count = 0
function this:new(o)
  o =o or {}
  setmetatable(o,self)
  self.__index = self
  return o
end

--����
function this:insert(k,v)

  if nil == self[k] then
    self[k] = v
    count = count + 1
  end
end

--��bean={ a=1,b=2}�͵�beanתΪmap
function this:insertBean(bean)
  for k,v in pairs(bean) do
    if nil == self[k] then
      self[k] = v
      count = count + 1
    end
  end
end

--�Ƴ�һ��
function this:remove(k)
  if nil ~= self[k] then
    self[k] = nil
    if count >0 then
      count = count - 1
    end
  end
end

--����key��ֵ
function this:getValue(k)
  local value = nil
  if nil ~= self[k] then
    value = self[k]
  end
  return value
end

--���map
function this:clear()
  for k,_ in pairs(self) do
    if nil ~= self[k] then
      self[k] = nil
    end
  end
  count = 0
end

--�������
function this:getSize()
  return count
end

--�Ƿ����
function this:isContains(k)
  if (nil ~= self[k]) then
    return true
  else
    return false
  end
end

--��ʾ��map
function this:showThis()
  for k,v in pairs(self) do
    print(k.." : "..v)
  end
end

return this





