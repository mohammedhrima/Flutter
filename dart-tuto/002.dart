void main() {
  User user = User("mohammed", 27);
  print(user.name);
  user.login();

  SuperUser supUser = SuperUser("super moha", 27);
  supUser.publish();
}

class User {
  String name;
  int age;

  User(this.name, this.age) {}
  void login() {
    print("user login");
  }
}

class SuperUser extends User {
  SuperUser(String name, int age) : super(name, age) {}

  void publish() {
    print("publish from SuperUser");
  }
}