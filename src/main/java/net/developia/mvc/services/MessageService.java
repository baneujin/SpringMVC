package net.developia.mvc.services;

import net.developia.mvc.models.MessageDTO;

public interface MessageService {

	void SendMessage(MessageDTO messageDTO) throws Exception;

}
