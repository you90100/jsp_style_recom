package user;

public class Username {
private String userID;
private String mem_pw;
private String UserName;
private String userGender;
private String userEmail;
private String mem_id;

public String getMem_pw() {
	return mem_pw;
}
public void setMem_pw(String mem_pw) {
	this.mem_pw = mem_pw;
}
public String getMem_id() {
	return mem_id;
}
public void setMem_id(String mem_id) {
	this.mem_id = mem_id;
}
public String getUserID() {
	return userID;
}
public void setUserID(String userID) {
	this.userID = userID;
}
public String getUserName() {
	return UserName;
}
public void setUserName(String userName) {
	UserName = userName;
}
public String getUserGender() {
	return userGender;
}
public void setUserGender(String userGender) {
	this.userGender = userGender;
}
public String getUserEmail() {
	return userEmail;
}
public void setUserEmail(String userEmail) {
	this.userEmail = userEmail;
}

}
