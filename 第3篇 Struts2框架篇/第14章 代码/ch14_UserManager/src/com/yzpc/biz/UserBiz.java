package com.yzpc.biz;

import java.util.List;
import com.yzpc.bean.User;
public interface UserBiz {
	public List<User> getAllUser();
	public List<User> getBySchoolUser(String likeSchool);
	public List<User> getByNameUser(String likeName);
	public User getUserById(int id);
	public int deleteUser(int id);
	public int addUser(User u);
	public int updateUser(User u);
}
