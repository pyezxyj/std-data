制作钥匙：

在装有java环境里
1，切换到DatGen.java目录,比如E目录
2，E:\>javac -d ./ DatGen.java
3，E:\>java DatGen '{"ipList":["127.0.0.1"],"codeList":["707000","707001","707002","707003","707004","707100"]}'

4，拷贝当前目录下的“config.dat”到项目“{项目路径}\src\main\resources”
5，验证：项目跑起来。在浏览器输入“http://IP:端口/项目名/api”，出现版本信息即成功。





部署步骤：
1，切换到本地tomcat部署包所在目录,例如
  cd /Users/myb858/Documents/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps

2，打包
  rm -rf data.tar.gz
  tar zcvf data.tar.gz std-data/
  scp -P57652 ./data.tar.gz root@120.55.113.192:/home/
  
3，部署
  ssh root@120.55.113.192 -p 57652

  
  cd /home/tomcat_STD_data/webapps
  rm -rf data.tar.gz
  cp -f ./std-data/WEB-INF/classes/application.properties .
  cp -f ./std-data/WEB-INF/classes/config.properties .
  rm -rf std-data/
  mv /home/data.tar.gz .
  tar zxvf data.tar.gz
  mv -f application.properties ./std-data/WEB-INF/classes/
  mv -f config.properties ./std-data/WEB-INF/classes/
4,起停tomcat_develop_account



http://120.55.113.192:8905/std-data/api







  


