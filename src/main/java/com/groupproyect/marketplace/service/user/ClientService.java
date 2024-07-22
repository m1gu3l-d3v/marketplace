package com.groupproyect.marketplace.service.user;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.user.Client;
import com.groupproyect.marketplace.repository.user.ClientRepository;
import com.groupproyect.marketplace.service.BaseService;

@Service
public class ClientService extends BaseService<Client> {
  private final ClientRepository clientRepository;

  public ClientService(ClientRepository clientRepository) {
    super(clientRepository);
    this.clientRepository = clientRepository;
  }

  public boolean existsByEmail(String email) {
    return clientRepository.existsByEmail(email);
  }

  public Client findByEmail(String email) {
    if (existsByEmail(email)) {
      return clientRepository.findByEmail(email);
    } else {
      return null;
    }
  }

  public boolean checkCredentials(String email, String password) {
    if (existsByEmail(email)) {
      if (findByEmail(email).getPassword().equals(password)) {
        return true;
      }
    }
    return false;
  }

  public Long getIdByEmail(String email) {
    return clientRepository.getIdByEmail(email);
  }
}