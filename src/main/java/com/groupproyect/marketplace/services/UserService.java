package com.groupproyect.marketplace.services;

import com.groupproyect.marketplace.models.user.BaseUser;
import com.groupproyect.marketplace.repositories.UserRepository;

public class UserService extends BaseService<BaseUser> {
  private final UserRepository userRepository;

  public UserService(UserRepository userRepository) {
    super(userRepository);
    this.userRepository = userRepository;
  }
}
