package com.groupproyect.marketplace.service.user;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.user.Client;
import com.groupproyect.marketplace.repository.user.ClientRepository;

@Service
public class ClientService extends BaseUserService<Client> {
  @SuppressWarnings("unused")
  private final ClientRepository clientRepository;

  public ClientService(ClientRepository clientRepository) {
    super(clientRepository);
    this.clientRepository = clientRepository;
  }

  public boolean checkCredentials(String email, String password) {
    if (existsByEmail(email)) {
      if (findByEmail(email).getPassword().equals(password)) {
        return true;
      }
    }
    return false;
  }
}