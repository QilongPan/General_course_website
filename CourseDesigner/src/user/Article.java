package user;

import java.sql.Date;

public class Article {
	private int id;
	private String articleTitle;
	private String articleAuthor;
	private String columnName; // 栏目名称
	private Date createDate; // 创建日期
	private String isStick; // 是否置顶

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIsStick() {
		return isStick;
	}

	public void setIsStick(String isStick) {
		this.isStick = isStick;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleAuthor() {
		return articleAuthor;
	}

	public void setArticleAuthor(String articleAuthor) {
		this.articleAuthor = articleAuthor;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getColumnName() {
		return columnName;
	}

	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

}
