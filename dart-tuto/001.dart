void main() {
  User user = User("mohammed", 27);
  print(user.name);
  user.login();
}

class User {
  String name;
  int age;

  User(this.name, this.age) {}
  void login() {
    print("user login");
  }
}
