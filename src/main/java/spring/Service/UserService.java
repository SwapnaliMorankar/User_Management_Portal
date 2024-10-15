package spring.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.Dao.UserDao;
import spring.Model.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public void createUser(User user) {
		this.userDao.addUser(user);
	}
	
	public List<User> selectAllUsers(){
		return this.userDao.getAllUsers();
	}
	
	public void deleteUser(int ID) {
		this.userDao.removeUser(ID);
	}
	
	public User selectUser(int ID) {
		User us = this.userDao.getUser(ID);
		return us;
	}
	
	public boolean authenticate(String email, String password) {
		User user1 = this.userDao.FindUser(email, password);
		
		if (user1 == null) {
	        return false;
	    }
	    
	    return user1.getPassword().equals(password);
	}

}
