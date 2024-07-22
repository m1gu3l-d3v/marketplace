package com.groupproyect.marketplace.service.valoration;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.valoration.ValorationStore;
import com.groupproyect.marketplace.repository.valoration.ValorationStoreRepository;
import com.groupproyect.marketplace.service.BaseService;

@Service
public class ValorationStoreService extends BaseService<ValorationStore> {
  @SuppressWarnings("unused")
  private final ValorationStoreRepository valorationStoreRepository;

  public ValorationStoreService(ValorationStoreRepository valorationStoreRepository) {
    super(valorationStoreRepository);
    this.valorationStoreRepository = valorationStoreRepository;
  }
}
