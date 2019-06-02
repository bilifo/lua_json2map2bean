json = require "json"
map=require "map"
bean=require ("bean")

--显示下原来bean的值
print("*****bean*****")
showBean()
--用bean创建map
print("*****newMap****")
newMap=map:new(bean)
newMap:showThis()
--使用 json.encode 生成字符串
print("*****jsonSend****")
jsonSend=json.encode(newMap)
print(jsonSend)
--假装另一个地方接收到了json字符串
print("*****jsonAccept****")
jsonAccept=json.decode(jsonSend)
print(jsonAccept)
print("*****jsonAccept pairs****")
for k,v in pairs(jsonAccept) do
  print(k.." : "..v)
end
--json转成map
print("*****newMap2****")
newMap2=map:new(jsonAccept)
newMap2:showThis()
--将原来的bean进行修改下,假装另一个地方的bean和本地的不同步
print("*****bean 2.0****")
bean.bean1=222
bean.bean2=333
showBean()
--updata()方法将bean进行更新
print("*****bean*****")
updata(newMap2)
showBean()
print("*****bean pairs****")
for k,v in pairs(bean) do
  print(k.." : "..v)
end
































