package dbOperation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Kind;

public class KindDao {
	Connection conn = DBConn.getConn();
	public List<Kind> getList(){
		List<Kind> list = new ArrayList<Kind>();
		try {
			Connection conn = DBConn.getConn();
			String sql = "select * from kind";
			PreparedStatement  prepareStatement = conn.prepareStatement(sql);
			ResultSet  resultSet = prepareStatement.executeQuery();
			Kind kind = null;
			while(resultSet.next()) {
				kind = new Kind();
				kind.setKindId(resultSet.getInt(1));
				kind.setContent(resultSet.getString(2));
				list.add(kind);
			} 
		}catch (SQLException e) {
				e.printStackTrace();
			}
		return list;
	}
}

