package com.hanwen.controller;

import com.hanwen.dao.MessageDao;
import com.hanwen.domain.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.Date;

@RestController
@RequestMapping("/Message")
public class MessageController {

    @Autowired
    private MessageDao messageRepository;

    @RequestMapping(method = RequestMethod.POST, value ="/AddMessage")
    public ModelAndView  addMessage(@RequestParam("title")String title,@RequestParam("name")String name,
                                   @RequestParam("corporation")String corporation,@RequestParam("email")String email,
                                   @RequestParam("text")String text,@RequestParam("linkedInUrl")String linkedInUrl) throws Exception{
        Message message=new Message();
        message.setTitle(title);
        message.setText(text);
        message.setCorporation(corporation);
        message.setAuthor(name);
        message.setEmail(email);
        message.setLinkedInUrl(linkedInUrl);
        message.setCreated_at(new Date());
        messageRepository.save(message);
        return new ModelAndView("redirect:GetMessages");
    }

    @RequestMapping(value ="/GetMessages")
    public ModelAndView getMessages() throws Exception{
        return new ModelAndView("getMessage","messages",messageRepository.findAll());
    }
}
