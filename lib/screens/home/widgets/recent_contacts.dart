import 'package:chatapp/models/user_model.dart';
import 'package:flutter/material.dart';

class RecentContacts extends StatelessWidget {
  final contactsList = User.usersList();

  RecentContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 70,
      child: Row(
        children: [
          const CircleAvatar(
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 40,
            ),
            backgroundColor: Colors.orange,
            radius: 40,
          ),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CircleAvatar(
                backgroundColor: contactsList[index].bgColor,
                radius: 40,
                child: Image.asset(contactsList[index].avatar,height: 40,),
              ),
              separatorBuilder: (_, index) => SizedBox(
                width: 1,
              ),
              itemCount: contactsList.length,
            ),
          ),
        ],
      ),
    );
  }
}
