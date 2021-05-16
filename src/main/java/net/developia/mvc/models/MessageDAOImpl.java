package net.developia.mvc.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDAOImpl implements MessageDAO{
	
	@Autowired
	private DataSource dataSource;
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	@Override
	public void SendMessage(MessageDTO messageDTO) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("insert into message(id,sendid,msgcontent) ");
		sql.append("values(?,?,?) ");
		try (Connection conn = dataSource.getConnection();
				PreparedStatement ps = conn.prepareStatement(sql.toString())) {
			ps.setString(1,messageDTO.getId());
			ps.setString(2,messageDTO.getSendid());
			ps.setString(3,messageDTO.getContent());
			ps.executeUpdate();
	}
	}





}
