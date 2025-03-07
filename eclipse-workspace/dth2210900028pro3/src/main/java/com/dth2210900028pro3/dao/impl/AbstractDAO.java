package com.dth2210900028pro3.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dth2210900028pro3.dao.GenericDAO;
import com.dth2210900028pro3.mapper.RowMapper;

public class AbstractDAO<T> implements GenericDAO<T> {

	public Connection getConn() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dth_2210900028_project3";
			String user = "root";
			String password = "Dth31082004@";
			return DriverManager.getConnection(url, user, password);

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			return null;
		}

	}

	private void setParameter(PreparedStatement statement, Object... parameters) {
	    try {
	        for (int i = 0; i < parameters.length; i++) {
	            Object parameter = parameters[i];
	            int index = i + 1;
	            if (parameter instanceof Long) {
	                statement.setLong(index, (Long) parameter);
	            } else if (parameter instanceof Integer) {
	                statement.setInt(index, (Integer) parameter);
	            } else if (parameter instanceof String) {
	                statement.setString(index, (String) parameter);
	            } else if (parameter instanceof Double) {
	                statement.setDouble(index, (Double) parameter);
	            } else if (parameter instanceof Boolean) {
	                statement.setBoolean(index, (Boolean) parameter);
	            } else if (parameter == null) {
	                statement.setNull(index, java.sql.Types.NULL);
	            } 
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	}
	
	@Override
	public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		List<T> results = new ArrayList<>();
		Connection conn = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			conn = getConn();
			statement = conn.prepareStatement(sql);
			
			setParameter(statement, parameters);
			
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				results.add(rowMapper.mapRow(resultSet));
			}
			return results;
		}catch(SQLException e) {
			return null;
		}finally {
			try {
				if (conn != null) {
					conn.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}

			} catch (SQLException e) {
				return null;
			}
		}

	}
}
