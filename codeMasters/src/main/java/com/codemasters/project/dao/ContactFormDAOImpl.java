package com.codemasters.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codemasters.project.dto.ContactFormDTO;

@Repository
public class ContactFormDAOImpl implements ContactFormDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void insertContactForm(ContactFormDTO contactFormDTO) {
        sqlSession.insert("com.codemasters.project.dao.ContactFormDAO.insertContactForm", contactFormDTO);
    }

    @Override
    public List<ContactFormDTO> getAllContactForms() {
        return sqlSession.selectList("com.codemasters.project.dao.ContactFormDAO.getAllContactForms");
    }

    @Override
    public ContactFormDTO getContactFormById(Long id) {
        return sqlSession.selectOne("com.codemasters.project.dao.ContactFormDAO.getContactFormById", id);
    }

    @Override
    public void updateContactForm(ContactFormDTO contactFormDTO) {
        sqlSession.update("com.codemasters.project.dao.ContactFormDAO.updateContactForm", contactFormDTO);
    }

    @Override
    public void deleteContactForm(Long id) {
        sqlSession.delete("com.codemasters.project.dao.ContactFormDAO.deleteContactForm", id);
    }
}