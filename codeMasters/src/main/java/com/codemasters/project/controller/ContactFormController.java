package com.codemasters.project.controller;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codemasters.project.dto.ContactFormDTO;
import com.codemasters.project.service.ContactFormService;

@Controller
public class ContactFormController {

	
	
	@Autowired
    private ContactFormService contactFormService;

    @RequestMapping(value = "/project/contactw/submitContactForm", method = RequestMethod.POST)
    public String submitContactForm(@ModelAttribute ContactFormDTO contactFormDTO) {
        // 작성일자 설정
        contactFormDTO.setDate(LocalDateTime.now());

        // 서비스를 통해 데이터베이스에 저장
        contactFormService.insertContactForm(contactFormDTO);

        return "redirect:/project/contactw/contact_us_mainpage.jsp";
    }
}
