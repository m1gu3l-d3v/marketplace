package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.Client;
import com.groupproyect.marketplace.repositories.ClientRepository;

public class ClientService extends BaseService<Client> {
  private final ClientRepository clientRepository;

  public ClientService(ClientRepository clientRepository) {
    super(clientRepository);
    this.clientRepository = clientRepository;
  }
}
