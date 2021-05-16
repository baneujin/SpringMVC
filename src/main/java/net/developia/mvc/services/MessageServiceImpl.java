package net.developia.mvc.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.developia.mvc.models.MessageDAO;
import net.developia.mvc.models.MessageDAOImpl;
import net.developia.mvc.models.MessageDTO;

@Service
public class MessageServiceImpl implements MessageService{
	
	@Autowired
	private MessageDAO messageDAO;
	
	@Override
	public void SendMessage(MessageDTO messageDTO) throws Exception {
		messageDAO.SendMessage(messageDTO);
	}

}
