import 'package:flutter/material.dart';
import 'package:whatsapp_plus/models/userchatmodel.dart';
import 'package:whatsapp_plus/views/individualchatpage.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.userChatModel}) : super(key: key);
  final UserChatModel userChatModel;
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => IndividualChatPage(
                  userChatModel: userChatModel,
          )));

      },
      child: ListTile(
    leading: const CircleAvatar(
    backgroundColor: Colors.grey,
    radius: 20,
    ),
    title:Text(
    userChatModel.name,
    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    trailing: Text(userChatModel.time),
    subtitle:Row(
    children: [const Icon(Icons.done_all), Text(userChatModel.message)],
    ),
    ),
    );
  }
}