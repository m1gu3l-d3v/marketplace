package com.groupproyect.marketplace.service.store;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupproyect.marketplace.model.store.Store;
import com.groupproyect.marketplace.repository.store.StoreRepository;

@Service
public class StoreService {

    @Autowired
    private StoreRepository storeRepository;

    public void save(Store store) {
        storeRepository.save(store);
    }
}


