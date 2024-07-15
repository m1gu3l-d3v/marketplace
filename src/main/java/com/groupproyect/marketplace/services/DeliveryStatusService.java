package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.DeliveryStatus;
import com.groupproyect.marketplace.repositories.DeliveryStatusRepository;

public class DeliveryStatusService extends BaseService<DeliveryStatus> {
  private final DeliveryStatusRepository deliveryStatusRepository;

  public DeliveryStatusService(DeliveryStatusRepository deliveryStatusRepository) {
    super(deliveryStatusRepository);
    this.deliveryStatusRepository = deliveryStatusRepository;
  }
}
