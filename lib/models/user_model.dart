import 'package:flutter/material.dart';

class User {
  num id;
  String fName;
  String lName;
  String avatar;
  Color bgColor;

  User({
    required this.id,
    required this.fName,
    required this.lName,
    required this.avatar,
    required this.bgColor,
});

  static List<User> usersList(){
    return[
      User(id: 1, fName: 'Abdelaziz', lName: 'Hadiat Allah', avatar: 'assets/images/av1.png', bgColor: Colors.lightGreen),
      User(id: 2, fName: 'Mohammed', lName: 'Saad', avatar: 'assets/images/av2.png', bgColor: Colors.blueAccent),
      User(id: 3, fName: 'Leila', lName: 'Simple', avatar: 'assets/images/av3.png', bgColor: Colors.orangeAccent),
      User(id: 4, fName: 'Meriem', lName: 'Rar', avatar: 'assets/images/av4.png', bgColor: Colors.blueGrey),
      User(id: 5, fName: 'Kawtar', lName: 'Nar', avatar: 'assets/images/av5.png', bgColor: Colors.grey),
      User(id: 6, fName: 'Rania', lName: 'Kar', avatar: 'assets/images/av6.png', bgColor: Colors.purple),
      User(id: 7, fName: 'Hamza', lName: 'Tar', avatar: 'assets/images/av7.png', bgColor: Colors.lightGreen),
      User(id: 8, fName: 'Oussama', lName: 'Far', avatar: 'assets/images/av8.png', bgColor: Colors.lightGreen),
      User(id: 9, fName: 'Safae', lName: 'Har', avatar: 'assets/images/av9.png', bgColor: Colors.lightGreen),
      User(id: 10, fName: 'Fouad', lName: 'Mar', avatar: 'assets/images/av10.png', bgColor: Colors.lightGreen),
      User(id: 11, fName: 'Salma', lName: 'Raj', avatar: 'assets/images/av11.png', bgColor: Colors.pink),
    ];
  }
}
