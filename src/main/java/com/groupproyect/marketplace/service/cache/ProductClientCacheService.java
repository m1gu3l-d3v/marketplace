package com.groupproyect.marketplace.service.cache;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.cache.ProductClientCache;
import com.groupproyect.marketplace.repository.cache.ProductClientCacheRepository;
import com.groupproyect.marketplace.service.BaseWithDateService;

@Service
public class ProductClientCacheService extends BaseWithDateService<ProductClientCache> {
  @SuppressWarnings("unused")
  private final ProductClientCacheRepository productClientCacheRepository;

  public ProductClientCacheService(ProductClientCacheRepository productClientCacheRepository) {
    super(productClientCacheRepository);
    this.productClientCacheRepository = productClientCacheRepository;
  }
}
