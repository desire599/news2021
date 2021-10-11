package dbOperation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.News;

public class NewsDao {
	Connection conn=DBConn.getConn();
	public List<News> getList(int limit) {
		List<News> list = new ArrayList<News>();
		try {
			Connection conn = DBConn.getConn();
			String sql="select n.newsid,n.title,n.time,k.content as kindName,n.pictures from news n "
					+"left join kind k on n.kindId=k.kindId order by newsId desc limit ?";
			PreparedStatement prepareStatement= conn.prepareStatement(sql);
			prepareStatement.setInt(1, limit);
			ResultSet resultSet=prepareStatement.executeQuery();
			News news = null;
			while(resultSet.next()) {
				news = new News();
				//System.out.println(resultSet.getInt(1));
				news.setNewsId(resultSet.getInt(1));
				news.setTitle(resultSet.getString(2));
				news.setTime(resultSet.getDate(3));
				news.setKindName(resultSet.getString(4));
				news.setPictures(resultSet.getString(5));
				list.add(news);
			}		
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}
}
