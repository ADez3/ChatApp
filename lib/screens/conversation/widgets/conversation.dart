import 'package:chatapp/constants/colors.dart';
import 'package:chatapp/models/message_model.dart';
import 'package:chatapp/screens/conversation/widgets/contact_info.dart';
import 'package:chatapp/screens/conversation/widgets/conversation_appbar.dart';
import 'package:chatapp/screens/conversation/widgets/conversation_message.dart';
import 'package:flutter/material.dart';

class Conversation extends StatelessWidget {
  final Message message;
  Conversation(this.message);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(
        children: [
            ConAppBar(),
            ContactInfo(message),
            Expanded(child: ConversationMessage()),
        ],
      ),
    );
  }
}
