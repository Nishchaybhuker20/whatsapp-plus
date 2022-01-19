import 'package:flutter/material.dart';
import 'package:whatsapp_plus/models/userchatmodel.dart';

class IndividualChatPage extends StatefulWidget{
  const IndividualChatPage({Key? key, required this.userChatModel})
  :super(key: key);
  final UserChatModel userChatModel;

  @override
  _IndividualChatPageState createState() => _IndividualChatPageState();
}

class _IndividualChatPageState extends State<IndividualChatPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.teal,
        leadingWidth: 100,
          leading: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
            ],
          ),
        //avoid unnecessary containers
        title: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.userChatModel.name),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          PopupMenuButton<String>(
              onSelected: (value){},
              itemBuilder: (BuildContext context){
                return [
                  const PopupMenuItem(
                      child: Text("View Contact"),
                  value: "View Contact",
                  ),
                  const PopupMenuItem(
                      child: Text("Media, links, and docs"),
                  value: "Media, links, and docs",
                  ),
                  const PopupMenuItem(
                      child: Text("Search"),
                  value: "Search",
                  ),
                  const PopupMenuItem(
                      child: Text("Mute notifications"),
                  value: "Mute notificatons",
                  ),
                  const PopupMenuItem(
                      child: Text("Wallpaper"),
                  value: "Wallpaper",
                  ),
                ];
              },
          ),
        ],
      ),
      // sized box for whitespace
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 55,
                      child: Card(
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintText: "Message",
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              onPressed: (){},
                              icon: const Icon(
                                Icons.emoji_emotions_outlined,
                                color: Colors.black,
                              )),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    onPressed: (){},
                                    icon: const Icon(
                                      Icons.attach_file,
                                      color: Colors.black,
                                    )),
                                IconButton(
                                    onPressed: (){},
                                    icon: const Icon(
                                      Icons.camera_alt,
                                      color: Colors.black,
                                    ))
                              ],
                            )),
                          ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                        ),
                      ),
        const Padding(
          padding: EdgeInsets.only(bottom: 1),
          child: CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 24,
            child: Icon(
            Icons.send,
              color: Colors.white,
          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}