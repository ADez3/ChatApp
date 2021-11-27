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
      User(id: 1, fName: 'Abdelaziz', lName: 'Hadiat Allah', avatar: 'assets/images/user0.png', bgColor: const Color(0xFFFDBEC8)),
      User(id: 2, fName: 'Mohammed', lName: 'Saad', avatar: 'assets/images/user2.png', bgColor: const Color(0xFFFED6C4)),
      User(id: 3, fName: 'Leila', lName: 'Simple', avatar: 'assets/images/user1.png', bgColor: const Color(0xFFA8E4F2)),
      User(id: 4, fName: 'Meriem', lName: 'Rar', avatar: 'assets/images/user3.png', bgColor: const Color(0xFFFFE5A7)),
      User(id: 5, fName: 'Kawtar', lName: 'Nar', avatar: 'assets/images/user5.png', bgColor: const Color(0xFFC3C1E6)),
      User(id: 6, fName: 'Zaid', lName: 'Kar', avatar: 'assets/images/user4.png', bgColor: const Color(0xFFFD95A2)),
      User(id: 7, fName: 'Hamza', lName: 'Tar', avatar: 'assets/images/user6.png', bgColor: const Color(0xFFA8E4F2)),
      // User(id: 8, fName: 'Oussama', lName: 'Far', avatar: 'assets/images/user3.png', bgColor: const Color(0xFFF992AD)),
      // User(id: 9, fName: 'Safae', lName: 'Har', avatar: 'assets/images/user1.png', bgColor: const Color(0xFFF78ECF)),
      // User(id: 10, fName: 'Fouad', lName: 'Mar', avatar: 'assets/images/user5.png', bgColor: const Color(0xFFF992AD)),
      // User(id: 11, fName: 'Salma', lName: 'Raj', avatar: 'assets/images/user3.png', bgColor: const Color(0xFFF78ECF)),
    ];
  }
}
