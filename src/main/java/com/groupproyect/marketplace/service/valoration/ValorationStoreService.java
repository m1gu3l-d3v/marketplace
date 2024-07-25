package com.groupproyect.marketplace.service.valoration;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.valoration.ValorationStore;
import com.groupproyect.marketplace.repository.valoration.ValorationStoreRepository;

@Service
public class ValorationStoreService extends BaseValorationService<ValorationStore> {
  @SuppressWarnings("unused")
  private final ValorationStoreRepository valorationStoreRepository;

  public ValorationStoreService(ValorationStoreRepository valorationStoreRepository) {
    super(valorationStoreRepository);
    this.valorationStoreRepository = valorationStoreRepository;
  }
}
