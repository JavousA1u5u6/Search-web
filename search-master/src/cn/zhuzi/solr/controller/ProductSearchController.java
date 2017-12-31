package cn.zhuzi.solr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.zhuzi.solr.po.Products;
import cn.zhuzi.solr.po.ProductsQuery;
import cn.zhuzi.solr.service.ProductSearchService;

/**
 * 
 * <p>Title: ProductSearchController</p>
 * <p>Description: 商品搜索controller</p>
 * <p>Company: www.itcast.com</p> 
 * @author	传智播客
 * @date	2020-12-13
 * @version 1.0
 */
@Controller
public class ProductSearchController {
	
	//注入service
	@Autowired
	private ProductSearchService productSearchService;
	
	
	@RequestMapping("/search")
	//商品搜索
	public String search(Model model,@ModelAttribute ProductsQuery productsQuery) throws Exception{
		
		//调用service执行搜索
		List<Products> list = productSearchService.searchProducts(productsQuery);
		
		//使用model将商品搜索列表放到request域中，从而在页面通过jstl显示
		model.addAttribute("list", list);
		
		//返回一个逻辑视图名，用在springmvc视频解析器，最终解析出真正jsp地址
		//物理视图地址=前缀+逻辑视图名+后缀即 /WEB-INF/jsp/  + search  + .jsp
		return "search";
	}

}
