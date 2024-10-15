package spring.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import spring.Model.User;

@Repository
public class UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void addUser(User user) {
		this.hibernateTemplate.saveOrUpdate(user);
	}

	// Get all
	public List<User> getAllUsers() {
		List<User> users = this.hibernateTemplate.loadAll(User.class);
		return users;
	}

	// Get one
	public User getUser(int ID) {
		User user2 = this.hibernateTemplate.get(User.class, ID);
		return user2;
	}

	@Transactional
	public void removeUser(int ID) {
		User user1 = this.hibernateTemplate.get(User.class, ID);
		this.hibernateTemplate.delete(user1);
	}

	// To authenticate
	public User FindUser(String email, String password) {
		return hibernateTemplate.execute(new HibernateCallback<User>() {
			@Override
			public User doInHibernate(Session session) {
				String hql = "FROM User WHERE email = :email";
				List<User> users = session.createQuery(hql, User.class).
						setParameter("email", email).getResultList();

				User user2;
				if (users.isEmpty()) {
					user2 = null; 
				} else {
					user2 = users.get(0); 
				}
				return user2; 
			}
		}); 
	} 

}
