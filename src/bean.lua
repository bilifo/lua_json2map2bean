----bean类,各种配置变量和初始化需要的变量.用来做全局的配置信息

bean={
  --bean属性,设置全局的属性
  --
  bean1=10,
  bean2=111
}

--接收o 并更新bean 注意:不能写成bean.updata
function updata(o)
  for k,v in pairs(o) do
--    print(k.." : "..v)
    bean[k]=v
  end
end

--show bean 注意:不能写成bean.showBean,因为迭代器会输出其他非bean得元素,报错看不懂
function showBean()
  for k,v in pairs(bean) do
    print(k.." : "..v)
  end
end

return bean



