class User {
  String uid;
  String name;

  User(this.uid, this.name);
}

class Contact {
  String cid;
  String phoneNumber;

  Contact(this.cid, this.phoneNumber);
}

void main() {
  List<User> users = [
    User("1", "John"),
    User("2", "Jane"),
    User("3", "Alice"),
  ];

  List<Contact> contacts = [
    Contact("1", "1111111111"),
    Contact("2", "2222222222"),
    Contact("3", "3333333333"),
  ];

  for (User user in users) {
    String? userPhoneNumber;

    for (Contact contact in contacts) {
      if (contact.cid == user.uid) {
        userPhoneNumber = contact.phoneNumber;
        break;
      }
    }
    print("${user.name}: $userPhoneNumber");
  }
}
