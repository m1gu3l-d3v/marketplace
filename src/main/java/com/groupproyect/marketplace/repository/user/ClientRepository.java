package com.groupproyect.marketplace.repository.user;

import com.groupproyect.marketplace.model.user.Client;
import com.groupproyect.marketplace.repository.BaseRepository;

public interface ClientRepository extends BaseRepository<Client> {
  public boolean existsByEmail(String email);
  public Client findByEmail(String email);
}
