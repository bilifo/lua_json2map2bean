# lua_json2map2bean

这是一个bean转map再转json的lua 的工具程序.目的是用于全局属性的保存和改变,如设置中的某些全局值

json 采用的是 https://github.com/rxi/json.lua

map是根据一篇网页上的https://blog.csdn.net/ywjun0919/article/details/50614539 ,进行修改的

由于是拼凑的工具,只考虑了json转map的情况,并不适用所有bean的情况

使用,以下是main.lua中的代码

    --引用脚本
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

结果

    *****bean*****
    bean1 : 10
    bean2 : 111
    *****newMap****
    bean1 : 10
    bean2 : 111
    *****jsonSend****
    {"bean1":10,"bean2":111}
    *****jsonAccept****
    table: 000000001E2F0580
    *****jsonAccept pairs****
    bean1 : 10
    bean2 : 111
    *****newMap2****
    bean1 : 10
    bean2 : 111
    *****bean 2.0****
    bean1 : 222
    bean2 : 333
    *****bean*****
    bean1 : 10
    bean2 : 111
    *****bean pairs****
    bean1 : 10
    bean2 : 111
