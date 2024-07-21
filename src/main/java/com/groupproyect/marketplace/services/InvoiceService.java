package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.purchase.Invoice;
import com.groupproyect.marketplace.repositories.InvoiceRepository;

public class InvoiceService extends BaseService<Invoice> {
  private final InvoiceRepository invoiceRepository;

  public InvoiceService(InvoiceRepository invoiceRepository) {
    super(invoiceRepository);
    this.invoiceRepository = invoiceRepository;
  }
}
