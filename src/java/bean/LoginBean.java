package bean;

public class LoginBean implements java.io.Serializable {
    private String email;
    private String password;
    
    public LoginBean(String e, String p) {
        email = e;
        password = p;
    }

    public LoginBean() {
    }
    
    public void setEmail(String e) { email = e; }
    public void setPassword(String p) { password = p; }
    
    public String getEmail() { return email; }
    public String getPassword() { return password; }
}
