import 'package:chatapp/constants/colors.dart';
import 'package:chatapp/models/user_model.dart';
import 'package:flutter/material.dart';

class RecentContacts extends StatelessWidget {
  final contactsList = User.usersList();

  RecentContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 110,
      child: Row(
        children: [
          const CircleAvatar(
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            backgroundColor: kIcons,
            radius: 25,
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CircleAvatar(
                backgroundColor: contactsList[index].bgColor,
                radius: 25,
                child: Image.asset(contactsList[index].avatar,height: 40,),
              ),
              separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
              itemCount: contactsList.length,
            ),
          ),
        ],
      ),
    );
  }
}
