public class UserValidationService {
    public boolean isUserValid(String user, String password){
        if(user.equals("Mudra") && password.equals("1234"))
        return true;

        return false;
    }
}
