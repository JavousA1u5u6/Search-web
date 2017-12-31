<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta content="utf-8" http-equiv="charset">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resource'/>/base.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resource'/>/plist20131112.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resource'/>/list-page-20141009.css" media="all">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resource'/>/pop_compare.css" media="all">
<link rel="shortcut icon" type="image/ico"
	href="/favicon.ico">
<script type="text/javascript"
	src="<c:url value='/resource'/>/jquery-1.2.6.pack.js"></script>
<style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
.en-markup-crop-options {
    top: 18px !important;
    left: 50% !important;
    margin-left: -100px !important;
    width: 200px !important;
    border: 2px rgba(255,255,255,.38) solid !important;
    border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
    margin-left: 0px !important;
}
</style>
<script type="text/javascript">
	function query() {
		
		queryList();
	}
	function queryList(curPage) {
		if(!curPage){
			document.getElementById("curPage").value = "";
		}
		//alert(document.getElementById("curPage").value);
		document.getElementById("actionForm").submit();
	}
	function filter(key, value) {
		document.getElementById(key).value=value;
		queryList();
	}
	function priceFilter(price_start,price_end){
		document.getElementById("price_start").value=price_start;
		document.getElementById("price_end").value=price_end;
		queryList();
	}

	function sort(sortField,sortType) {
		document.getElementById("sortField").value=sortField;
		var s = document.getElementById("sortType").value;
		if (s != "asc") {
			s = "asc";
		} else {
			s = "desc";
		}
		document.getElementById("sortType").value = s;
		queryList();
	}
	function changePage(p) {
		var curPage = Number(document.getElementById("curPage").value);
		//alert(curPage);
		curPage = curPage + p;
		
		document.getElementById("curPage").value = curPage;
		queryList(curPage);
	}
</script>
</head>
<body class="root61">

<div id="o-header-2013">
	<div class="w" id="header-2013">
		<div id="logo-2013" class="ld"><a href="#" hidefocus="true"><b></b><img src="" width="270" height="60" alt="&nbsp;"></a></div>
		<!--logo end-->
		<div id="search-2013">
			<div class="i-search ld">
				<ul id="shelper" class="hide"></ul>
				<form id="actionForm" action="search.action" method="POST">
				<div class="form">
					<input type="text" class="text" accesskey="s" name="keywords" id="key" value="${productsQuery.keywords }"
						autocomplete="off" onkeydown="javascript:if(event.keyCode==13) {query()}">
					<input type="button" value="搜索商品" class="button" onclick="query()">
				</div>
				<input type="hidden" name="catalog_name" id="catalog_name" value="${productsQuery.catalog_name }"/> 
				<input type="hidden" name="price_end" id="price_end" value="${productsQuery.price_end }"/> 
				<input type="hidden" name="price_start" id="price_start" value="${productsQuery.price_start }"/> 
				<input type="hidden" name="curPage" id="curPage" value="${productsQuery.curPage }"/> 
				<input type="hidden" name="sortField" id="sortField" value="${productsQuery.sortField }"/> 
				<input type="hidden" name="sortType" id="sortType" value="${productsQuery.sortType }"/>
				</form>
			</div>
			<div id="hotwords"></div>
		</div>
		
		<!--settleup end-->
	</div>
	<!--header end-->
	<div class="w">
		<div id="nav-2013">
			<div id="categorys-2013" class="categorys-2014">
				<div class="mt ld">
					<h2><a href="#">全部商品分类<b></b></a></h2>
				</div>
			</div>
			<div id="treasure"></div>
			<ul id="navitems-2013">
				<li class="fore1" id="nav-home"><a href="#">首页</a></li>
				<li class="fore2" id="nav-fashion"><a href="#">服装城</a></li>
				<li class="fore3" id="nav-chaoshi"><a href="#">食品</a></li>
				<li class="fore4" id="nav-tuan"><a href="#" target="_blank">团购</a></li>
				<li class="fore5" id="nav-auction"><a href="#">夺宝岛</a></li>
				<li class="fore6" id="nav-shan"><a href="#">闪购</a></li>
				<li class="fore7" id="nav-jinrong"><a href="#" target="_blank">金融</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="w">
	<div class="breadcrumb">
		<strong><a href="#">服饰内衣</a></strong><span>&nbsp;&gt;&nbsp;<a
			href="#">女装</a>&nbsp;&gt;&nbsp;<a href="#">T恤</a></span>
	</div>
</div>
<div class="w main">
<div class="right-extra">
<div id="select" clstag="thirdtype|keycount|thirdtype|select" class="m">
	<div class="mt">
		<h1>
			T恤 -<strong>&nbsp;商品筛选</strong>
		</h1>
	</div>
	<div class="mc attrs">
		<div data-id="100001" class="brand-attr">
			<div class="attr">
				<div class="a-key"><a href="javascript:filter('catalog_name', '')" >商品类别：</a>
				<c:if test="${productsQuery.catalog_name!='' }">
					<br>${ productsQuery.catalog_name}
				</c:if>
				</div>
				<div class="a-values">
					<div class="v-tabs">
						<div class="tabcon">
							<div>
								<a href="javascript:filter('catalog_name', '幽默杂货')" >幽默杂货</a>
							</div>
							<div>
								<a href="javascript:filter('catalog_name', '时尚卫浴')">时尚卫浴</a>
							</div>
							<div>
								<a href="javascript:filter('catalog_name', '另类文体')">另类文体</a>
							</div>
							<div>
								<a href="javascript:filter('catalog_name', '创意相架')">创意相架</a>
							</div>
							<div>
								<a href="javascript:filter('catalog_name', '巧妙收纳')">巧妙收纳</a>
							</div>
							<div>
								<a href="javascript:filter('catalog_name', '与钟不同')">与钟不同</a>
							</div>
							<div>
								<a href="javascript:filter('catalog_name', '个性男人')">个性男人</a>
							</div>
							<div>
								<a href="javascript:filter('catalog_name', '电脑周边')">电脑周边</a>
							</div>
							<div>
								<a href="javascript:filter('catalog_name', '品质家电')">品质家电</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '品味茶杯')">品味茶杯</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '四季用品')">四季用品</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '健康宝宝')">健康宝宝</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '新潮美容')">新潮美容</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '产品配件')">产品配件</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '雅致灯饰')">雅致灯饰</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '阳光车饰')">阳光车饰</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '趣味纸抽')">趣味纸抽</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '布艺毛绒')">布艺毛绒</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '益智手工')">益智手工</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '环保餐具')">环保餐具</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '闪亮匙扣')">闪亮匙扣</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '手机饰品')">手机饰品</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '精品数码')">精品数码</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '理财钱罐')">理财钱罐</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '美味厨房')">美味厨房</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '保健按摩')">保健按摩</a>
							</div>						                      
							<div>						                      
								<a href="javascript:filter('catalog_name', '魅力女人')">魅力女人</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div data-id="100002" class="prop-attrs">
			<div class="attr">
				<div class="a-key"><a href="javascript:priceFilter('','')">价格</a>：
				<c:if test="${productsQuery.price_start!='' }">
					起：${productsQuery.price_start }
				</c:if>
				<c:if test="${productsQuery.price_end!='' }">
					止：${productsQuery.price_end }
				</c:if>
				</div>
				<div class="a-values">
					<div class="v-fold">
						<ul class="f-list">
							<li><a href="javascript:priceFilter(0,9)">0-9</a></li>
							<li><a href="javascript:priceFilter(10,19)">10-19</a></li>
							<li><a href="javascript:priceFilter(20,29)">20-29</a></li>
							<li><a href="javascript:priceFilter(30,39)">30-39</a></li>
							<li><a href="javascript:priceFilter(40,49)">40-49</a></li>
							<li><a href="javascript:priceFilter(50,'')">50以上</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="filter">
	<div class="cls"></div>
	<div class="fore1">
		<dl class="order">
			<dt>排序：
			</dt>
			<dd>
				<a href="javascript:sort('product_price')">价格
				<c:if test="${productsQuery.sortType =='asc' }">
					升序
				</c:if>
				<c:if test="${productsQuery.sortType =='desc' }">
					降序
				</c:if>
				</a><b></b>
			</dd>

		</dl>
		<dl class="activity">
			<dd></dd>
		</dl>
		<div class="pagin pagin-m">
			<span class="text"><i>${productsQuery.curPage }</i>/${productsQuery.pageCount }</span>
			<a href="javascript:changePage(-1)" class="prev">上一页<b></b></a>
			<a href="javascript:changePage(1)" class="next">下一页<b></b></a>
		</div>
		<div class="total">
			<span>共<strong>${productsQuery.recordCount }</strong>个商品
			</span>
		</div>
		<span class="clr"></span>
	</div>
</div>
<!--商品列表开始-->
<div id="plist" class="m plist-n7 plist-n8 prebuy">
	<ul class="list-h">
		<c:forEach var="product" items="${list }">
		<li pid="${product.pid }">
			<div class="lh-wrap">
				<div class="p-img">
					<a target="_blank" href="#">
						<img width="220" height="282" class="err-product" src="/product_image/${product.picture}">
					</a>
				</div>
				<div class="p-name">
					<a target="_blank" href="#">${product.name }</a>
					<br>
					<a target="_blank" href="#">${product.catalog_name }</a>
				</div>
				<div class="p-price">
					<strong>￥${product.price }</strong><span id="p1269191543"></span>
				</div>
			</div>
		</li>
		</c:forEach>
	</ul>
</div>
<!--商品列表结束-->
</div>
<div class="left">
	<div id="sortlist" clstag="thirdtype|keycount|thirdtype|sortlist"
		class="m">
		<div class="mt">
			<h2>服饰内衣</h2>
		</div>
		<div class="mc">
			<div class="item current">
				<h3>
					<b></b>女装
				</h3>
				<ul>
					<li><a href="#">T恤</a></li>
					<li><a href="#">衬衫</a></li>
					<li><a href="#">针织衫</a></li>
					<li><a href="#">雪纺衫</a></li>
					<li><a href="#">卫衣</a></li>
					<li><a href="#">马甲</a></li>
					<li><a href="#">连衣裙</a></li>
					<li><a href="#">半身裙</a></li>
					<li><a href="#">牛仔裤</a></li>
					<li><a href="#">休闲裤</a></li>
					<li><a href="#">打底裤</a></li>
					<li><a href="#">正装裤</a></li>
					<li><a href="#">小西装</a></li>
					<li><a href="#">短外套</a></li>
					<li><a href="#">风衣</a></li>
					<li><a href="#">毛呢大衣</a></li>
					<li><a href="#">真皮皮衣</a></li>
					<li><a href="#">棉服</a></li>
					<li><a href="#">羽绒服</a></li>
					<li><a href="#">大码女装</a></li>
					<li><a href="#">中老年女装</a></li>
					<li><a href="#">婚纱</a></li>
					<li><a href="#">打底衫</a></li>
					<li><a href="#">旗袍/唐装</a></li>
					<li><a href="#">加绒裤</a></li>
					<li><a href="#">吊带/背心</a></li>
					<li><a href="#">羊绒衫</a></li>
					<li><a href="#">短裤</a></li>
					<li><a href="#">皮草</a></li>
					<li><a href="#">礼服</a></li>
					<li><a href="#">仿皮皮衣</a></li>
					<li><a href="#">羊毛衫</a></li>
					<li><a href="#">设计师/潮牌</a></li>
				</ul>
			</div>
			<div class="item">
				<h3>
					<b></b>男装
				</h3>
			</div>
			<div class="item">
				<h3>
					<b></b>内衣
				</h3>
			</div>
			<div class="item">
				<h3>
					<b></b>服饰配件
				</h3>
			</div>
		</div>
	</div>
	<div id="limitBuy">
		<div id="limitbuy9199"
			clstag="thirdtype|keycount|thirdtype|limitbuy536"
			class="m limitbuy hide">
			<div class="mt">
				<h2>服饰鞋帽</h2>
			</div>
			<div class="mc">
				<div id="clock9199" class="clock">正在加载…</div>
				<div id="limit9199"></div>
			</div>
		</div>
	</div>
	<div id="ad_left" reco_id="6" class="m m0 hide"></div>
	<!--用户最终购买-->
	<div id="finalbuy" class="hide m m0" style="display: block;">
		<div class="mt">
			<h2>
				浏览<font color="red">T恤</font>最终购买
			</h2>
		</div>
		<div class="mc">
		</div>
	</div>
	<div id="weekRank" clstag="thirdtype|keycount|thirdtype|mrank"
		class="m rank">
		<div class="mt">
			<h2>一周销量排行</h2>
		</div>
		<div class="mc">
		</div>
	</div>
</div><!--<div class="left">-->

<span class="clr"></span>
<div id="Collect_Tip" class="Tip360 w260"></div>

</div><!--<div class="w main">-->



</body>
</html>