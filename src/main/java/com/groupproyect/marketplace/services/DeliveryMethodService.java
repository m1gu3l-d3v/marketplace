package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.DeliveryMethod;
import com.groupproyect.marketplace.repositories.DeliveryMethodRepository;

public class DeliveryMethodService extends BaseService<DeliveryMethod> {
  private final DeliveryMethodRepository deliveryMethodRepository;

  public DeliveryMethodService(DeliveryMethodRepository deliveryMethodRepository) {
    super(deliveryMethodRepository);
    this.deliveryMethodRepository = deliveryMethodRepository;
  }
}
