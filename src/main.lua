json = require "json"
map=require "map"
bean=require ("bean")

--��ʾ��ԭ��bean��ֵ
print("*****bean*****")
showBean()
--��bean����map
print("*****newMap****")
newMap=map:new(bean)
newMap:showThis()
--ʹ�� json.encode �����ַ���
print("*****jsonSend****")
jsonSend=json.encode(newMap)
print(jsonSend)
--��װ��һ���ط����յ���json�ַ���
print("*****jsonAccept****")
jsonAccept=json.decode(jsonSend)
print(jsonAccept)
print("*****jsonAccept pairs****")
for k,v in pairs(jsonAccept) do
  print(k.." : "..v)
end
--jsonת��map
print("*****newMap2****")
newMap2=map:new(jsonAccept)
newMap2:showThis()
--��ԭ����bean�����޸���,��װ��һ���ط���bean�ͱ��صĲ�ͬ��
print("*****bean 2.0****")
bean.bean1=222
bean.bean2=333
showBean()
--updata()������bean���и���
print("*****bean*****")
updata(newMap2)
showBean()
print("*****bean pairs****")
for k,v in pairs(bean) do
  print(k.." : "..v)
end
































