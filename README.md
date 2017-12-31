# 祥云玩具商城 -搜索模块

	使用Solr实现电商网站中商品信息搜索功能，可以根据关键字、分类、价格搜索商品信息，也可以根据价格进行排序。

	

## 使用技术 ##
Solr：Solr4.10.3
Jdk：jdk1.7.0_72
Tomcat：apache-tomcat-6.0.0
speing3.2.0
jstl
junit
log4j
solrJ相关jar包

## 整体架构 ##

springmvc：实现用户搜索的交互（controller控制器和页面）

service：
	接收controller的请求去搜索商品。
	通过solrJ调用solr 服务搜索商品。
	service调用dao进行商品信息维护时要更新mysql的同时将solr的索引更新。（保持mysql数据库中数据和solr索引同步）

Dao层：
	对电商系统中，在dao中要对商品信息进行维护和管理。

-->mysql数据库
		存储了商品信息

索引流程如下：
1、管理员在业务系统中维护商品信息
2、将商品信息写入关系数据库
3、将商品信息写入Solr的索引库
（本例子不实现商品信息维护功能所以直接使用dataImport-handler处理器完成索引创建）


