import 'package:flutter/material.dart';
//import "package:flutter_contact/flutter_contact.dart";
import 'package:whatsapp_plus/views/individualchatpage.dart';
import 'package:whatsapp_plus/views/newcontactchat.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}
class _ContactsPageState extends State<ContactsPage> {
  //List<Contact>? contacts;
  bool areContactsLoaded = false;
  @override
  initState(){
    super.initState();
  //  getPermission();
  //  getContacts();
}
//getPermission() async{
  //  if(await FlutterContacts.requestPermission()){
    //  print("Permission Asked");
    //}
//}
//getContacts() async {
  //  contacts = await FlutterContacts.getContacts();
   // setState(() {
    //  areContactsLoaded = true;
    //});
//}

@override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Select Contact"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
          ),

          PopupMenuButton<String>(itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(child: Text("Invite a friend")),
              const PopupMenuItem(child: Text("Contacts")),
              const PopupMenuItem(child: Text("Refresh")),
              const PopupMenuItem(child: Text("Help")),
            ];
          })
        ],
      ),
      body: ListView.builder(
  //        itemCount: contacts?.length,
          itemBuilder: (BuildContext context, element) {
            return InkWell(
              onLongPress: () {},
              child: ListTile(
                title: Text("hello",
      //            areContactsLoaded
    //              ? contacts![element].displayName
        //              : "Contacts Loading",
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
              ),
            );
          }),
    );
   }
}