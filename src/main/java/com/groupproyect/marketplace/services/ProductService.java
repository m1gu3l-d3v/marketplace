package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.product.Product;
import com.groupproyect.marketplace.repositories.ProductRepository;

public class ProductService extends BaseService<Product> {
  private final ProductRepository productRepository;

  public ProductService(ProductRepository productRepository) {
    super(productRepository);
    this.productRepository = productRepository;
  }
}