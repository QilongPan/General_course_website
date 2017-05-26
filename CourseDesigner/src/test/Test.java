package test;

import java.util.ArrayList;

import user.Article;
import controlDB.ArticalControlDB;

public class Test {
	
	public static void main(String[] args) {
		ArticalControlDB acd = new ArticalControlDB();
		ArrayList<Article> articles =acd.getPageElements(2);
		for(int i =0 ; i < articles.size();i++){
			System.out.println(articles.get(i).getId());
		}

	}

}
