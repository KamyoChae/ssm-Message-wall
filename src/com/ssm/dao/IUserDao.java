package com.ssm.dao;

import com.ssm.beans.User;

public interface IUserDao {
	public void insertUser(User user);

	public User queryUser(User user);

	public void updateUser(User user);

	public User queryUserByName(String name);
}
