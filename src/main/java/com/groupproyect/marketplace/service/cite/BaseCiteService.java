package com.groupproyect.marketplace.service.cite;

import com.groupproyect.marketplace.repository.cite.BaseCiteRepository;
import com.groupproyect.marketplace.service.BaseService;

public class BaseCiteService<T> extends BaseService<T> {
  @SuppressWarnings("unused")
  private final BaseCiteRepository<T> baseCiteRepository;

  public BaseCiteService(BaseCiteRepository<T> baseCiteRepository) {
    super(baseCiteRepository);
    this.baseCiteRepository = baseCiteRepository;
  }
}
