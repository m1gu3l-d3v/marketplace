package com.groupproyect.marketplace.repository.cache;

import java.util.List;

import com.groupproyect.marketplace.model.cache.ProductClientCache;
import com.groupproyect.marketplace.model.user.Client;
import com.groupproyect.marketplace.repository.BaseWithDateRepository;

public interface ProductClientCacheRepository extends BaseWithDateRepository<ProductClientCache> {
  List<ProductClientCache> findByClientId(Long idClient);

  List<ProductClientCache> findByClient(Client idClient);

  List<ProductClientCache> findByClientIdAndProductId(Long idClient, Long idProduct);

  boolean existsByClientIdAndProductId(Long idClient, Long idProduct);

  boolean existsByClientId(Long idClient);

  boolean existsByClient(Client client);
}
