import 'package:chatapp/constants/colors.dart';
import 'package:chatapp/screens/home/widgets/recent_contacts.dart';
import 'package:chatapp/screens/home/widgets/recent_messages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25.0,top: 30),
              child: Text(
                'Chat App \n or Shut Up',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            RecentContacts(),
            RecentMessages(),
          ],
        ),
      ),
    );
  }
}
