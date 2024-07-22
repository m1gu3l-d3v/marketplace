package com.groupproyect.marketplace.repository.categorie;

import org.springframework.data.repository.NoRepositoryBean;

import com.groupproyect.marketplace.repository.BaseRepository;

@NoRepositoryBean
public interface BaseCategory<T> extends BaseRepository<T> {
  
}
