package dbOperation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import model.Kind;
import util.C3P0Util;

public class KindDao {
	Connection conn = DBConn.getConn();
	private QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
	public List<Kind> getList(){
		List<Kind> list = new ArrayList<Kind>();
		try {
			//Connection conn = DBConn.getConn();
			String sql = "select * from kind";
			/*PreparedStatement  prepareStatement = conn.prepareStatement(sql);
			ResultSet  resultSet = prepareStatement.executeQuery();
			Kind kind = null;
			while(resultSet.next()) {
				kind = new Kind();
				kind.setKindId(resultSet.getInt(1));
				kind.setContent(resultSet.getString(2));
				list.add(kind);
			}*/
			list = qr.query(sql, new BeanListHandler<Kind>(Kind.class));
		}catch (SQLException e) {
				e.printStackTrace();
			}
		return list;
	}
}

