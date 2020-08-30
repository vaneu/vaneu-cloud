package com.vaneu.common;

import java.util.Map;

import io.swagger.annotations.ApiModelProperty;

/**
 * @ClassName: PageUtil
 * @Description: TODO(分页)
 * @author vaneu
 * @date 2020-8-30 0:14:28
 */
public class PageUtil implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	/**当前页*/
	@ApiModelProperty(value = "描述：成功或失败等", required = true, position = 2, example = "描述信息")
	private Long page 		= 1L;
	/**每页显示多少条，默认是10条*/
	private Long rows 		= 10L;
	/**总页数*/
	private Long totalPage 	= 0L;
	/**总记录数*/
	private Long totalRow 	= 0L; 
	/**排序字段*/
	private String  sort;
	/**ASC DESC*/
	private String  order	= "ASC";
	/**查询参数*/
	private Map<String, Object> params;
	
	/**分页*/
	public void setTotalRows(Long totalRow) {
		this.totalRow 	= totalRow;
		this.page 		= (page - 1) * rows;
		this.totalPage 	= ((totalRow - 1) / rows) + 1;
	}
	
	public Long getTotalPage() {
		return totalPage;
	}

	public Long getPage() {
		return page;
	}

	public void setPage(Long page) {
		this.page = page;
	}

	public Long getRows() {
		return rows;
	}

	public void setRows(Long rows) {
		this.rows = rows;
	}

	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}

	public Long getTotalRow() {
		return totalRow;
	}

	public void setTotalRow(Long totalRow) {
		this.totalRow = totalRow;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public Map<String, Object> getParams() {
		return params;
	}

	public void setParams(Map<String, Object> params) {
		this.params = params;
	}
}
