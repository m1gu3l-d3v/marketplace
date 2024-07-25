package com.groupproyect.marketplace.service.product;

import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.product.Product;
import com.groupproyect.marketplace.repository.product.ProductRepository;
import com.groupproyect.marketplace.service.BaseService;

@Service
public class ProductService extends BaseService<Product> {
    
    @SuppressWarnings("unused")
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        super(productRepository);

        this.productRepository = productRepository;
    }


}
