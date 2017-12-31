package cn.zhuzi.solr.po;

/**
 * 
 * <p>Title: ProductsQuery</p>
 * <p>Description: 用户交互的模型对象</p>
 * <p>Company: www.itcast.com</p> 
 * @author	传智播客
 * @date	2020-12-13
 * @version 1.0
 */
public class ProductsQuery extends Products {
	
	//关键字
	private String keywords;
	
	//商品价格起止
	private Float price_start;
	
	private Float price_end;
	
	//排序字段
	private String sortField;
	//排序方式 asc/desc
	private String sortType;
	
	//当前页码
	private Integer curPage;
	//每页显示个数
	private Integer rows;
	
	//总页数，用于返回
	private Integer pageCount;
	//总记录数，用于返回在页面显示
	private Long recordCount;

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public Float getPrice_start() {
		return price_start;
	}

	public void setPrice_start(Float price_start) {
		this.price_start = price_start;
	}

	public Float getPrice_end() {
		return price_end;
	}

	public void setPrice_end(Float price_end) {
		this.price_end = price_end;
	}

	public String getSortField() {
		return sortField;
	}

	public void setSortField(String sortField) {
		this.sortField = sortField;
	}

	public String getSortType() {
		return sortType;
	}

	public void setSortType(String sortType) {
		this.sortType = sortType;
	}

	public Integer getCurPage() {
		return curPage;
	}

	public void setCurPage(Integer curPage) {
		this.curPage = curPage;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public Long getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(Long recordCount) {
		this.recordCount = recordCount;
	}

	
	
}
