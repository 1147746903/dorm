package com.wqe.dorm.service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;



@Service
public class MailService {


    @Autowired
    private JavaMailSender javaMailSender;

    @Value("${spring.mail.username}")
    private String from;

    @ResponseBody
    @RequestMapping("/send")
    public String send(String to, String subject, String context) {

        if(to.matches("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"))
        {
            System.out.println("OK");
        }
        else
        {
            return "Err";
        }
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("厦门理工学院宿舍报修系统<"+from+">");
        message.setTo(to);
        message.setSubject(subject);
        message.setText(context);
        javaMailSender.send(message);
        return "success";
    }









}
