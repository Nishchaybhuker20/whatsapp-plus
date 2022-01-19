import 'package:flutter/material.dart';
import 'package:whatsapp_plus/views/chatpage.dart';

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: const Text("Whatsapp Plus"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                      child: Text("New Group"),
                  value: "New Group",
                  ),
                  const PopupMenuItem(
                      child: Text("New Broadcast"),
                  value: "New Broadcast",
                  ),
                  const PopupMenuItem(
                      child: Text("Setting"),
                  value: "Settings",
                  ),
                ];
              },
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: tabController,
          tabs: const[
            Tab(
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              )),
            Tab(
              child: Text("Chats"),
            ),
            Tab(
              child: Text("Status"),

            ),
            Tab(
              child: Text("Calls"),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Text("Camera Page"),
          ChatPage(),
          Text("Status Page"),
          Text("Calls")
        ],
      ),
    );
  }
}