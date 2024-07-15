package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.Store;
import com.groupproyect.marketplace.repositories.StoreRepository;

public class StoreService extends BaseService<Store> {
  private final StoreRepository storeRepository;

  public StoreService(StoreRepository storeRepository) {
    super(storeRepository);
    this.storeRepository = storeRepository;
  }
}
