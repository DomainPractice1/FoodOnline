package ssh.dao;

import java.util.List;

import ssh.beans.User;

public interface ShowUserDao {
	public List<User> findAll(User user);
}
