package com.groupproyect.marketplace.service.store;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.store.Store;
import com.groupproyect.marketplace.repository.store.StoreRepository;
import com.groupproyect.marketplace.service.BaseWithDateService;

@Service
public class StoreService extends BaseWithDateService<Store> {
  @SuppressWarnings("unused")
  private final StoreRepository storeRepository;

  public StoreService(StoreRepository storeRepository) {
    super(storeRepository);
    this.storeRepository = storeRepository;
  }

  public Store save(Store store) {
    return storeRepository.save(store);
  }
}
