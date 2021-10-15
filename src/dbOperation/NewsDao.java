package dbOperation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import model.News;
import util.C3P0Util;

public class NewsDao {
	Connection conn=DBConn.getConn();
	private QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
	public List<News> getList(int limit) {
		List<News> list = new ArrayList<News>();
		try {
			//Connection conn = DBConn.getConn();
			String sql="select n.newsid,n.title,n.time,k.content as kindName,n.pictures from news n "
					+"left join kind k on n.kindId=k.kindId order by newsId desc limit ?";
			/*PreparedStatement prepareStatement= conn.prepareStatement(sql);
			prepareStatement.setInt(1, limit);
			ResultSet resultSet=prepareStatement.executeQuery();
			News news = null;
			while(resultSet.next()) {
				news = new News();
				System.out.println(resultSet.getInt(1));
				news.setNewsId(resultSet.getInt(1));
				news.setTitle(resultSet.getString(2));
				news.setTime(resultSet.getDate(3));
				news.setKindName(resultSet.getString(4));
				news.setPictures(resultSet.getString(5));
				list.add(news);
			}*/		
			list = qr.query(sql, new BeanListHandler<News>(News.class),limit);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}
	public News getByNewsid(String newsid) {
		News news = null;
		try {
			//Connection conn = DBConn.getConn();
			String sql="select n.*,k.content as kindName,u.username from news n "
					+"left join kind k on n.kindId=k.kindId "
					+"left join user u on n.uid=u.uid where newsId=?";
			/*PreparedStatement prepareStatement= conn.prepareStatement(sql);
			prepareStatement.setString(1, newsid);
			ResultSet resultSet=prepareStatement.executeQuery();
			while(resultSet.next()) {
				news = new News();
				news.setNewsId(resultSet.getInt ("newsId"));
				news.setTitle(resultSet.getString("title"));
				news.setTime(resultSet.getDate("time"));
				news.setPictures(resultSet.getString("pictures"));
				news.setKindName(resultSet.getString("kindName")) ;
				news.setContent ( resultSet.getString("content"));
				news.setEditor(resultSet.getString("editor"));
				news.setFrom(resultSet.getString("from"));
				news.setVideo( resultSet.getString("video"));
				news.setUsername( resultSet.getString("username"));
			}*/		
			news = (News) qr.query(sql, new BeanListHandler<News>(News.class),newsid);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return news;
	}
}
