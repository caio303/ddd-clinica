package com.quiroprax.api.service;

import com.quiroprax.api.model.dto.CadastroUsuarioDTO;
import com.quiroprax.api.model.dto.LoginDTO;
import com.quiroprax.api.model.dto.TokenDTO;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface AuthenticacaoService extends UserDetailsService {
    TokenDTO login(LoginDTO loginDTO);
    void signUp(CadastroUsuarioDTO signUpData);
}
