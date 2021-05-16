package net.developia.mvc.models;

import java.sql.SQLException;

public interface MessageDAO {

	void SendMessage(MessageDTO messageDTO) throws SQLException;
}
