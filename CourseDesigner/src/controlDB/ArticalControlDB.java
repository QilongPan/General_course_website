package controlDB;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import user.Article;
import db.DBConnection;

//文章的增删改查
public class ArticalControlDB {
	// 增加
	public void saveArticle(Article article) throws SQLException {
		Connection conn = DBConnection.getConnection();
		String sql = " " + "insert into artical"
				+ " (articleTitle,articleAuthor,columnName,createDate,isStick)"
				+ "values(" + "?,?,?,?,?)";
		PreparedStatement ptmt = conn.prepareStatement(sql);
		ptmt.setString(1, article.getArticleTitle());
		ptmt.setString(2, article.getArticleAuthor());
		ptmt.setString(3, article.getColumnName());
		ptmt.setDate(4, (Date) article.getCreateDate());
		ptmt.setString(5, article.getIsStick());
		ptmt.execute();
	}

	// 删除
	public void deleteArticle(int id) {
		Connection conn = DBConnection.getConnection();
		String sql = " " + "delete  from artical  where id = ?";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, id);
			ptmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 修改
	public void updateArticle(Article article) {
		Connection conn = DBConnection.getConnection();
		String sql = " "
				+ "update artical set  articleTitle=?,articleAuthor=?,columnName=? ,createDate=?,isStick=? where id=?";
		PreparedStatement ptmt = null;
		try {
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, article.getArticleTitle());
			ptmt.setString(2, article.getArticleAuthor());
			ptmt.setString(3, article.getColumnName());
			ptmt.setDate(4, (Date) article.getCreateDate());
			ptmt.setString(5, article.getIsStick());
			ptmt.setInt(6,article.getId());
			ptmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 查找
	public Article selectArticle(String articleTitle) {
		ArrayList<Article> articles = new ArrayList<Article>();
		Connection conn = DBConnection.getConnection();
		String sql = " " + "select * from artical  where articleTitle = ?";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, articleTitle);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				Article article = new Article();
				article.setId(rs.getInt("id"));
				article.setArticleTitle(rs.getString("articleTitle"));
				article.setArticleAuthor(rs.getString("articleAuthor"));
				article.setColumnName(rs.getString("columnName"));
				article.setCreateDate(rs.getDate("createDate"));
				article.setIsStick(rs.getString("isStick"));
				articles.add(article);
			}
			if (articles.size() != 0)
				return articles.get(0);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Article> getAllDBArticle() {
		ArrayList<Article> articles = new ArrayList<Article>();
		Connection conn = DBConnection.getConnection();
		String sql = " " + "select * from artical";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				Article article = new Article();
				article.setId(rs.getInt("id"));
				article.setArticleTitle(rs.getString("articleTitle"));
				article.setArticleAuthor(rs.getString("articleAuthor"));
				article.setColumnName(rs.getString("columnName"));
				article.setCreateDate(rs.getDate("createDate"));
				article.setIsStick(rs.getString("isStick"));
				articles.add(article);
			}
			if (articles.size() != 0)
				return articles;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	// 通过Id查询文章
	public ArrayList<Article> getArticleById(int id) {
		ArrayList<Article> articles = new ArrayList<Article>();
		Connection conn = DBConnection.getConnection();
		String sql = " " + "select * from artical where id = ? ";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, id);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				Article article = new Article();
				article.setId(rs.getInt("id"));
				article.setArticleTitle(rs.getString("articleTitle"));
				article.setArticleAuthor(rs.getString("articleAuthor"));
				article.setColumnName(rs.getString("columnName"));
				article.setCreateDate(rs.getDate("createDate"));
				article.setIsStick(rs.getString("isStick"));
				articles.add(article);
			}
			if (articles.size() != 0)
				return articles;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	//实现分页查询文章
	
	public ArrayList<Article> getPageElements(int currentPage){
		ArrayList<Article> articles = new ArrayList<Article>();
		Connection conn = DBConnection.getConnection();
		String sql = " " + "select * from artical limit ?,?";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1,(currentPage-1)*5);
			ptmt.setInt(2,5);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				Article article = new Article();
				article.setId(rs.getInt("id"));
				article.setArticleTitle(rs.getString("articleTitle"));
				article.setArticleAuthor(rs.getString("articleAuthor"));
				article.setColumnName(rs.getString("columnName"));
				article.setCreateDate(rs.getDate("createDate"));
				article.setIsStick(rs.getString("isStick"));
				articles.add(article);
			}
			if (articles.size() != 0)
				return articles;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
