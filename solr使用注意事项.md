**Solr是什么?**

	Apache旗下的全文搜索服务器,Solr是可以运行到许多web容器中,solr服务就是对外提供http,socket网络协议的服务,由solo服务来搜索索引.solr是对lucene的扩展,提供了许多丰富的接口,solr也是lucene面向企业级应用的服务;

**为什么使用solr**
	因为solr提供了 更加丰富的查询语言 同时实现了 可配置 可扩展 并对索引和搜索服务进行了优化,是对 lucene的扩展

**整体流程**
	
	前台客户端编辑关键字-->后台系统接收请求-->远程调用 webServer中的solr服务-->进行创建索引或者查询索引库的操作
	

**整体介绍**
	solrhome是一个目录,是solr运行的主目录,solr目录中包含了多个solrCore目录,每个solrCore对应一个索引文件目录
	
	solrCore即solr实例对外提供给索引和搜索服务.

**solrconfig.xml**

	是solrCore的配置文件  配置了依赖的lucene版本  依赖的jar包  还配置了请求处理器 

	<requestHandler name="/select" class="solr.SearchHandler">
    <!-- 设置默认的参数值，可以在请求地址中修改这些参数-->
    <lst name="defaults">
        <str name="echoParams">explicit</str>
        <int name="rows">10</int><!--显示数量-->
        <str name="wt">json</str><!--显示格式-->
        <str name="df">text</str><!--默认搜索字段-->
    </lst>
</requestHandler>


**schema.xml**

	在solrCore的conf目录下 ,它是solr数据表配置文件,提前定义了许多fileld
1. 定义field 和 fieldType  创建文档的前提,每一个field都有fieldtype
2. fieldtype决定了是否分词

**	dataimport-Handler介绍**

	solr提供数据导入处理器 将 并且自动完成 只需要进行一些配置即可

# SolrJ #

	solrj是访问solr服务的 客户端,提供了索引和搜索的请求方法,solrj通常嵌入在
	业务系统中,通过solrj的api接口去访问solr服务





## 问题 ##

1.思考 solr作为全文检索工具  的 运行结构



2.为什么要配置多个solrCore,以及如何配置


3.为什么要id  有什么用 怎么定义


4.copyField 是 干什么?



## 注意:在  what why how 三个层次下 循序渐进 ##