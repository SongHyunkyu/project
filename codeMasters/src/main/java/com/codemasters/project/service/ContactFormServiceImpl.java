package com.codemasters.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codemasters.project.dao.ContactFormDAO;
import com.codemasters.project.dto.ContactFormDTO;

@Service
public class ContactFormServiceImpl implements ContactFormService {

    @Autowired
    private ContactFormDAO contactFormDAO;

    @Override
    public void insertContactForm(ContactFormDTO contactFormDTO) {
        contactFormDAO.insertContactForm(contactFormDTO);
    }

    @Override
    public List<ContactFormDTO> getAllContactForms() {
        return contactFormDAO.getAllContactForms();
    }

    @Override
    public ContactFormDTO getContactFormById(Long id) {
        return contactFormDAO.getContactFormById(id);
    }

    @Override
    public void updateContactForm(ContactFormDTO contactFormDTO) {
        contactFormDAO.updateContactForm(contactFormDTO);
    }

    @Override
    public void deleteContactForm(Long id) {
        contactFormDAO.deleteContactForm(id);
    }
}
