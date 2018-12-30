package com.ssm.service;

import com.ssm.beans.User;

public interface IUserService {
	public void addUser(User user);
	public User queryUser(User user);
	public void updateInfo(User user);
	public User queryUserByName(String name);
}
