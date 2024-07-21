package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.purchase.PaymentMethod;
import com.groupproyect.marketplace.repositories.PaymentMethodRepository;

public class PaymentMethodService extends BaseService<PaymentMethod> {
  private final PaymentMethodRepository paymentMethodRepository;

  public PaymentMethodService(PaymentMethodRepository paymentMethodRepository) {
    super(paymentMethodRepository);
    this.paymentMethodRepository = paymentMethodRepository;
  }
}
