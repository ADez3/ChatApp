import 'package:chatapp/models/message_model.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final Message message;

  ContactInfo(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              '${message.user.fName}\n${message.user.lName}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                height: 1.3,
              ),
          ),
          Row(
            children: [
              _callButton(Icons.call),
              SizedBox(width: 10,),
              _callButton(Icons.video_camera_back),
            ],
          )
        ],
      ),
    );
  }

  _callButton(IconData iconData) => 
      Container(
        padding: EdgeInsets.all(8),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0x30FFFFFF),
        ),
        child: Icon( iconData,color: Colors.white,size: 25,),
      );
}
