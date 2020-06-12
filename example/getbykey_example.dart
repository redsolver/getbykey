import 'package:getbykey/getbykey.dart';

class User {
  String id;
  String name;

  User({this.id, this.name});

  String get $key =>
      id; // Add the `$key` getter to your class. In this example class the `id` is the key

  @override
  String toString() => 'User{name: $name}';
}

var users = <User>[
  User(
    id: '4b614020-1f3a-4f44-9435-5f834f8f4f90',
    name: 'Alice',
  ),
  User(
    id: 'eb40e648-d88f-45f3-bac0-26c8c392f4d9',
    name: 'Bob',
  ),
];

void main() {
  var user1 = users.getByKey('eb40e648-d88f-45f3-bac0-26c8c392f4d9');

  print(user1); // => User{name: Bob}

  var user2 = users.getByKey('this-key-does-not-exist');

  print(user2); // => null

  var user3 = users.getByKey('4b614020-1f3a-4f44-9435-5f834f8f4f90');

  print(user3); // => User{name: Alice}
}
