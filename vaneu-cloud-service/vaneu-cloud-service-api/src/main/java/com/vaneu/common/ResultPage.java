package com.vaneu.common;

import io.swagger.annotations.ApiModelProperty;

/**
 * @ClassName: ResultPage
 * @Description: TODO()
 * @author vaneu
 * @date 2020-8-30 0:17:00
 * @param <T>
 */
public class ResultPage<T> implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	@ApiModelProperty(value = "分页相关信息", required = true, position = 1)
	private PageUtil pages;

	@ApiModelProperty(value = "数据：Json格式数据", required = true, position = 2)
	private T result;

	public PageUtil getPages() {
		return pages;
	}

	public void setPages(PageUtil pages) {
		this.pages = pages;
	}

	public T getResult() {
		return result;
	}

	public void setResult(T result) {
		this.result = result;
	}

}
