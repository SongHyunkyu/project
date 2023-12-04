package com.codemasters.project.service;

import java.util.List;

import com.codemasters.project.dto.ContactFormDTO;

public interface ContactFormService {

    void insertContactForm(ContactFormDTO contactFormDTO);

    List<ContactFormDTO> getAllContactForms();

    ContactFormDTO getContactFormById(Long id);

    void updateContactForm(ContactFormDTO contactFormDTO);

    void deleteContactForm(Long id);
}