package com.groupproyect.marketplace.service.valoration;

import com.groupproyect.marketplace.model.valoration.ValorationProduct;
import com.groupproyect.marketplace.repository.valoration.ValorationProductRepository;

public class ValorationProductService extends BaseValorationService<ValorationProduct> {
  @SuppressWarnings("unused")
  private final ValorationProductRepository valorationProductRepository;

  public ValorationProductService(ValorationProductRepository valorationProductRepository) {
    super(valorationProductRepository);
    this.valorationProductRepository = valorationProductRepository;
  }
}
