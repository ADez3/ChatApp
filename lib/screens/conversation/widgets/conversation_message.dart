import 'package:chatapp/constants/colors.dart';
import 'package:chatapp/models/message_model.dart';
import 'package:flutter/material.dart';

class ConversationMessage extends StatelessWidget {
  final myId = 0;
  final list = Message.chatMessages();

  ConversationMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 70),
          child: ListView.separated(
            padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context,index) =>
            list[index].user.id == myId ? _sendMessage(list[index]) : _receiveMessage(list[index]),
              separatorBuilder: (_,index){return const SizedBox(height: 0,);},
              itemCount: list.length,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(bottom: 20,left: 30,right: 30),
            height: 50,
            width: double.infinity,
            child: Stack(children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: kGreyLight.withOpacity(0.2),
                  filled: true,
                  contentPadding: const EdgeInsets.only(left: 20,top: 15,right:5,bottom: 15,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: const Icon(Icons.send,color: Colors.orange,),
                  hintText: 'Type your message here ....',
                  hintStyle: TextStyle(color : kPrimaryDark.withOpacity(0.3),),
                ),
              ),
              Positioned(
                  bottom: 5,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimary,
                    ),
                    child: const Icon(Icons.send,color: Colors.white,size: 15,),
                  ),
              ),
            ],),
          ),
        ),
      ],
    );
  }

  _receiveMessage(Message message) {
     return Container(
       padding: const EdgeInsets.only(bottom: 10),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Row(
             children: [
               message.isContinue ?
               const SizedBox(width: 40,) :
               CircleAvatar(
                 child:Image.asset(message.user.avatar),
                 backgroundColor: message.user.bgColor.withOpacity(0.5),
               ),
               const SizedBox(width: 8,),
               Container(
                 padding: const EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   color: message.user.bgColor.withOpacity(0.5),
                   borderRadius: const BorderRadius.only(
                     topLeft: Radius.circular(40),
                     topRight: Radius.circular(40),
                     bottomRight: Radius.circular(40),
                   ),
                 ),
                 child: ConstrainedBox(
                   constraints: const BoxConstraints(maxWidth: 200),
                   child: Text(message.lastMessage,style: const TextStyle(
                     height: 1.5,
                   ),),
                 ),
               ),
             ],
           ),
           Text(message.lastTime,
             style: const TextStyle(
               color: kGreyLight,
               fontSize: 12,
             ),),
         ],
       ),
     );
  }

  _sendMessage(Message message) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(message.lastTime,
          style: const TextStyle(
            color: kGreyLight,
            fontSize: 12,
          ),),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: kPrimaryLight,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 200),
              child: Text(message.lastMessage,style: const TextStyle(
                height: 1.5,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
