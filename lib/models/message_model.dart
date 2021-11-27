import 'package:chatapp/models/user_model.dart';


var users = User.usersList();

class Message{
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;
  
  Message({
    required this.user,
    required this.lastMessage,
    required this.lastTime,
    required this.isContinue,
});
  
  static List<Message> homePageMessagesList(){
    return[
      Message(
          user: users[0],
          lastMessage: 'Hi did you do what I told you ?',
          lastTime: '05:30',
          isContinue: false),
      Message(
          user: users[5],
          lastMessage: 'No problem ;)',
          lastTime: '01:17',
          isContinue: false),
      Message(
          user: users[4],
          lastMessage: 'Hi did you do what I told you ?',
          lastTime: '12:50',
          isContinue: false),
      // Message(
      //     user: users[7],
      //     lastMessage: 'Hi did you do what I told you ?',
      //     lastTime: '22:28',
      //     isContinue: false),
      Message(
          user: users[3],
          lastMessage: 'Hi did you do what I told you ?',
          lastTime: '15:40',
          isContinue: false),
      Message(
          user: users[1],
          lastMessage: 'Hi did you do what I told you ?',
          lastTime: '06:10',
          isContinue: false),
      // Message(
      //     user: users[9],
      //     lastMessage: 'Hi did you do what I told you ?',
      //     lastTime: '07:00',
      //     isContinue: false),
      // Message(
      //     user: users[10],
      //     lastMessage: 'Hi did you do what I told you ?',
      //     lastTime: '00:00',
      //     isContinue: false),
      Message(
          user: users[6],
          lastMessage: 'Hi did you do what I told you ?',
          lastTime: '01:31',
          isContinue: false),
      Message(
          user: users[2],
          lastMessage: 'Hi did you do what I told you ?',
          lastTime: '15:45',
          isContinue: false),
      // Message(
      //     user: users[8],
      //     lastMessage: 'Hi did you do what I told you ?',
      //     lastTime: '18:40',
      //     isContinue: false),
    ];
  }
}