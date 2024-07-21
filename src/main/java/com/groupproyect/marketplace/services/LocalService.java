package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.store.Local;
import com.groupproyect.marketplace.repositories.LocalRepository;

public class LocalService extends BaseService<Local> {
  private final LocalRepository localRepository;

  public LocalService(LocalRepository localRepository) {
    super(localRepository);
    this.localRepository = localRepository;
  }
}
