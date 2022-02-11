
void main() {
User user1 = User('nikos', 30);
print(user1.age);
user1.login();

User user2 = User('kok', 16);
print(user2.username);
}

class User {
  String username='' ;
  int age=-1 ;
  User(String username , int age){
    this.username=username;
    this.age=age;
        
  }
  void login(){
    print('user logged in');
  }
}
class SuperUser extends User {
  SuperUser(String username, int age): super(username, age);
  void publish(){
    print('published update');
  }
}