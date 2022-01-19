import 'package:flutter/material.dart';
import 'package:whatsapp_plus/models/userchatmodel.dart';
import 'package:whatsapp_plus/views/contactspage.dart';
import 'package:whatsapp_plus/widgets/chatcard.dart';

class ChatPage extends StatefulWidget{
  const ChatPage({Key? key}): super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>{
  List<UserChatModel> chats = [
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Elon Musk", time:"01:17" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Introvert", time:"01:16" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Anchal", time:"01:15" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Dad", time:"01:22" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Amit", time:"01:42" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Sumit", time:"01:52" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Neha", time:"01:18" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Sujal garg", time:"11:12" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Rohit", time:"01:32" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Kevin", time:"01:22" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Bharti", time:"08:12" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Mittal", time:"07:12" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Sunil", time:"01:12" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Saurabh", time:"02:12" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Satish", time:"03:12" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Mritunjay", time:"06:12" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Shubham", time:"01:12" ),
    UserChatModel(message: ("hello there I am using whatsapp"), name: "Sandeep", time:"11:12" ),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ContactsPage()));
        },
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
          itemCount: chats.length,
      itemBuilder: (context, element) =>
        ChatCard(userChatModel: chats[element])),
    );
  }
}