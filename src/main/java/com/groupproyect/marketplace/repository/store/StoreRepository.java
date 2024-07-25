package com.groupproyect.marketplace.repository.store;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.groupproyect.marketplace.model.store.Store;

@Repository
public interface StoreRepository extends CrudRepository<Store, Long> {
    // Puedes agregar métodos personalizados aquí si es necesario
}

