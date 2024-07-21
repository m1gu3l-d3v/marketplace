package com.groupproyect.marketplace.service.valoration;

import com.groupproyect.marketplace.model.valoration.ValorationProduct;
import com.groupproyect.marketplace.repository.valoration.ValorationProductRepository;
import com.groupproyect.marketplace.service.BaseService;

public class ValorationProductService extends BaseService<ValorationProduct> {
  @SuppressWarnings("unused")
  private final ValorationProductRepository valorationProductRepository;

  public ValorationProductService(ValorationProductRepository valorationProductRepository) {
    super(valorationProductRepository);
    this.valorationProductRepository = valorationProductRepository;
  }
}
