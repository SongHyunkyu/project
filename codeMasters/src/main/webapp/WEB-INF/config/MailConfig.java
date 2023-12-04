import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class MailConfig {
    
    @Bean
    public JavaMailSender gmailMailService(){
        JavaMailSenderImpl javaMailSender = new JavaMailSenderImpl();

        javaMailSender.setHost("smtp.gmail.com");  // Gmail SMTP ������
        javaMailSender.setUsername("hyunkyu1228@gmail.com"); // Gmail ���� ���̵�
        javaMailSender.setPassword("bpzaukwgzgqhovqt"); // Gmail ���� ��й�ȣ

        javaMailSender.setPort(587); // SMTP ��Ʈ

        javaMailSender.setJavaMailProperties(getMailProperties()); // ���� �������� ���� ����

        return javaMailSender;
    }

    // ���� �������� ���� ��������
    private Properties getMailProperties(){
        Properties properties = new Properties();
        properties.setProperty("mail.transport.protocol", "smtp"); // �������� ����
        properties.setProperty("mail.smtp.auth", "true"); // smtp ����
        properties.setProperty("mail.smtp.starttls.enable", "true"); // smtp strattles ���
        properties.setProperty("mail.debug", "true"); // ����� ��� 
        properties.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com"); // ssl ���� ���� (smtp ������) 
        properties.setProperty("mail.smtp.ssl.enable", "true"); // ssl ��� 
        
        return properties;
    }
}
