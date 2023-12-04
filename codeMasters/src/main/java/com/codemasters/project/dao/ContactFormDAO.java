package com.codemasters.project.dao;

import java.util.List;

import com.codemasters.project.dto.ContactFormDTO;

public interface ContactFormDAO {

    void insertContactForm(ContactFormDTO contactFormDTO);

    List<ContactFormDTO> getAllContactForms();

    ContactFormDTO getContactFormById(Long id);

    void updateContactForm(ContactFormDTO contactFormDTO);

    void deleteContactForm(Long id);
}
