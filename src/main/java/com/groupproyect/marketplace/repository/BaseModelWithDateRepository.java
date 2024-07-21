package com.groupproyect.marketplace.repository;

import org.springframework.data.repository.NoRepositoryBean;

import com.groupproyect.marketplace.model.BaseModelWithDate;

@NoRepositoryBean
public interface BaseModelWithDateRepository extends BaseRepository<BaseModelWithDate> {
}
