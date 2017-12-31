package cn.zhuzi.solr.service;

import java.util.List;

import cn.zhuzi.solr.po.Products;
import cn.zhuzi.solr.po.ProductsQuery;

/**
 * 
 * <p>Title: ProductSearchService</p>
 * <p>Description:商品搜索service </p>
 * <p>Company: www.itcast.com</p> 
 * @author	传智播客
 * @date	2020-12-13
 * @version 1.0
 */
public interface ProductSearchService {
	
	//商品搜索
	public List<Products> searchProducts(ProductsQuery productsQuery)throws Exception;

}
