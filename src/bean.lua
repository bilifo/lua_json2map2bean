----bean��,�������ñ����ͳ�ʼ����Ҫ�ı���.������ȫ�ֵ�������Ϣ

bean={
  --bean����,����ȫ�ֵ�����
  --
  bean1=10,
  bean2=111
}

--����o ������bean ע��:����д��bean.updata
function updata(o)
  for k,v in pairs(o) do
--    print(k.." : "..v)
    bean[k]=v
  end
end

--show bean ע��:����д��bean.showBean,��Ϊ�����������������bean��Ԫ��,��������
function showBean()
  for k,v in pairs(bean) do
    print(k.." : "..v)
  end
end

return bean



