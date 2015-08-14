package org.tarena.dao;

import org.tarena.entity.User;

public interface UserDao {
      public User findUserById(int id);
      public User findUserByUserName(String userNmae);
      public boolean saveUser(User user);
}
