package ssh.service;

import ssh.forms.UserForm;

public interface UserManager {

	public void regUser(UserForm user);
	public boolean logUser(UserForm user);
}
