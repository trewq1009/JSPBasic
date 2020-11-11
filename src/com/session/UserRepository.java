package com.session;

import java.util.ArrayList;
import java.util.List;


public class UserRepository {

	
	// DB가정
	private static List<User> userList = new ArrayList<>();

	public static List<User> getUserList() {
		return userList;
	}

	public static void setUserList(User user) {
		UserRepository.userList.add(user);
		
		System.out.println(userList.size());		// 몇명인지 확인용
	}
	
	public static User getUser(String id) {
		
		for(User user : userList) {
			
			if(user.getId().equals(id)) {
				return user;
			}
		}
		return null;
	}
	
	
	public static void delUser(String id) {
		
		userList.remove(getUser(id));
	}
	
	
	
}





















