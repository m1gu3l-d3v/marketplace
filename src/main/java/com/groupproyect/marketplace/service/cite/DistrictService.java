package com.groupproyect.marketplace.service.cite;

import com.groupproyect.marketplace.model.cite.District;
import com.groupproyect.marketplace.repository.cite.DistrictRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DistrictService {
    @Autowired
    private DistrictRepository districtRepository;

    public List<District> getAllDistricts() {
        return districtRepository.findAll();
    }
}
