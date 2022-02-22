import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constant_color.dart';
import '../widget/notification_drawer.dart';
import '../widget/user_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Builder(builder: (context){
          return IconButton(
            icon: const Icon(Icons.menu, color: Colors.black, size: 30,),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        title: const Text(
          'Home Page',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: bgHexColor,
        elevation: 0,
        actions: [
          Builder(builder:(context){
            return IconButton(
              onPressed: (){
                Scaffold.of(context).openEndDrawer();
              }, 
              icon: const Icon(Icons.notifications, color: Colors.black, size: 30,)
            );
            }
          ),
        ],
      ),

      drawer: const UserDrawer(),
      endDrawer:  const NotificationDrawer(),


      
      body: Container(
        child: const Text("Home Pages"),
      ),
    );
  }
}
