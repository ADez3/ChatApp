import 'package:chatapp/models/message_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentMessages extends StatelessWidget {
  RecentMessages({Key? key}) : super(key: key);

  final messagesList = Message.homePageMessagesList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: rcmessages(),
    ));
  }

  Widget rcmessages() {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => messagebuilder(index),
      separatorBuilder: (_, index) => const SizedBox(
        height: 20,
      ),
      itemCount: messagesList.length,
    );
  }

  messagebuilder(int index) {
    return Row(
      children: [
        CircleAvatar(
          child: Image.asset(
            messagesList[index].user.avatar,
            height: 70,
          ),
          backgroundColor: messagesList[index].user.bgColor,
          radius: 42,
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${messagesList[index].user.fName} ${messagesList[index].user.lName}',
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    messagesList[index].lastTime,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    messagesList[index].lastMessage,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
