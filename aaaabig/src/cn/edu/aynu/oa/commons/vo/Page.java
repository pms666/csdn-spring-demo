package cn.edu.aynu.oa.commons.vo;

import java.util.List;

import cn.edu.aynu.oa.commons.constant.Constants;


public class Page<T> {
	
	private int pageno;
	
	private int pageStartIndex;
	
	private int pageSize;
	
	private long totalRows;
	
	private long totalPages;
	
	private List<T> datas;

	public Page() {
		pageno = 1;
		pageSize = Constants.PAGE_SIZE;
	}

	/**
	 * 
	 * @param pageno
	 *            页码
	 * @param pageSize
	 *            页面大小
	 */
	public Page(int pageno, int pageSize) {
		if (pageno < 0) {
			pageno = 1;
		}
		if (pageSize < 0) {
			pageSize = Constants.PAGE_SIZE;
		}
		this.pageno = pageno;
		this.pageSize = pageSize;
	}

	public int getPageno() {
		return pageno;
	}

	public void setPageno(int pageno) {
		this.pageno = pageno;
	}

	public int getPageStartIndex() {
		return (pageno - 1) * pageSize;
	}

	public void setPageStartIndex(int pageStartIndex) {
		this.pageStartIndex = pageStartIndex;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public long getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(long totalRows) {
		this.totalRows = totalRows;
	}

	public long getTotalPages() {
		totalPages = totalRows / pageSize;
		if(totalRows % pageSize != 0) {
			totalPages++;
		}
		return totalPages;
	}

	public void setTotalPages(long totalPages) {
		this.totalPages = totalPages;
	}

	public List<T> getDatas() {
		return datas;
	}

	public void setDatas(List<T> datas) {
		this.datas = datas;
	}

	@Override
	public String toString() {
		return "Page [pageno=" + pageno + ", pageStartIndex=" + pageStartIndex + ", pageSize=" + pageSize
				+ ", totalRows=" + totalRows + ", totalPages=" + totalPages + ", datas=" + datas + "]";
	}

}
