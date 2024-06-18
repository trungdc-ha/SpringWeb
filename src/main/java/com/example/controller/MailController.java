package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.util.Locale;

@Controller
@RequestMapping
public class MailController {

    @Autowired
    JavaMailSender mailSender;

    @Autowired
    TemplateEngine templateEngine;

    @RequestMapping("/sendEmail")
    public String sendEmail() throws MessagingException {
        sendEmail("Demo send mail", "Chao moi nguoi", "teenboytg2@gmail.com");
        return "redirect:/";
    }

    public void sendEmail(String subject, String message, String recipientEmail) throws MessagingException {
        Locale locale = LocaleContextHolder.getLocale();
        // Prepare the evaluation context
        Context ctx = new Context(locale);
        ctx.setVariable("message", message);
        // Prepare message using a Spring helper
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, "UTF-8");
        mimeMessageHelper.setSubject(subject);
        mimeMessageHelper.setTo(recipientEmail);
        // Create the HTML body using Thymeleaf
        String htmlContent = "";
        htmlContent = templateEngine.process("/email_en.html", ctx);
        mimeMessageHelper.setText(htmlContent, true);
        // Send email
        mailSender.send(mimeMessage);
    }
}
