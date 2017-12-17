# Solr

	基于Lucene的全文搜索服务器

**Solr是什么?**

	Apache旗下的全文搜索服务器,Solr是可以运行到许多web容器中,solr服务就是对外提供http,socket网络协议的服务,由solo服务来搜索索引.solr是对lucene的扩展,提供了许多丰富的接口,solr也是lucene面向企业级应用的服务;

**整体流程**
	
	前台客户端编辑关键字-->后台系统接收请求-->远程调用 webServer中的solr服务-->进行创建索引或者查询索引库的操作
	

**整体介绍**
	solrhome是一个目录,是solr运行的主目录,solr目录中包含了多个solrCore目录,每个solrCore对应一个索引文件目录

	solrCore即solr实例对外提供给索引和搜索服务.