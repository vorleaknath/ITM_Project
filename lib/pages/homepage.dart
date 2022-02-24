
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
        toolbarHeight: 70,
        shadowColor: Colors.black,
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
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: bgHexColor,
        elevation: 3,
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


      body: Column(
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 160,
              height: 160,
              margin: const EdgeInsets.symmetric(vertical: 25),
              decoration: const BoxDecoration(
                color: Color(0xFFFFCACA),
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 4,
                    offset: Offset(0, 5),
                  )
                ],
              ),
            ),
            Container(
              width: 160,
              height: 160,
              // margin: const EdgeInsets.fromLTRB(0, 30, 20, 30),
              decoration: const BoxDecoration(
                  color: Color(0xFFFFCACA),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [
                  BoxShadow(
                  color: Colors.black45,
                  blurRadius: 4,
                  offset: Offset(0, 5),
                )
                ],
              ),
            )
          ],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFCACA),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 4,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
              ),
              Container(
                width: 160,
                height: 160,
                // margin: const EdgeInsets.fromLTRB(0, 30, 20, 30),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFCACA),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 4,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}
