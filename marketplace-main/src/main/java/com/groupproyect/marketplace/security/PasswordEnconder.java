package com.groupproyect.marketplace.security;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class PasswordEnconder {
    @Bean
    public BCrypt bCryptPasswordEncoder(){
        return new BCrypt();
    }
}
