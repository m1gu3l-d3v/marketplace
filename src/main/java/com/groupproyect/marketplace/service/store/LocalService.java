package com.groupproyect.marketplace.service.store;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.store.Local;
import com.groupproyect.marketplace.repository.store.LocalRepository;
import com.groupproyect.marketplace.service.BaseWithDateService;

@Service
public class LocalService extends BaseWithDateService<Local> {
  @SuppressWarnings("unused")
  private final LocalRepository localRepository;

  public LocalService(LocalRepository localRepository) {
    super(localRepository);
    this.localRepository = localRepository;
  }
}
