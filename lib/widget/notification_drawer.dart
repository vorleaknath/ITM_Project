import 'package:flutter/material.dart';

import '../constants/constant_color.dart';
import '../models/notification_model.dart';


class NotificationDrawer extends StatefulWidget {
  const NotificationDrawer({ Key? key }) : super(key: key);

  @override
  _NotificationDrawerState createState() => _NotificationDrawerState();
}

class _NotificationDrawerState extends State<NotificationDrawer> {
  List<Notifications> notification = [
    Notifications(
      title: "You have 0 unread notification",
      description: ""
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: anccentHexColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30),
                height: 109,
                decoration: BoxDecoration(
                  color: mainHexColor,
                ),
                child: const ListTile(
                  contentPadding: EdgeInsets.all(20),
                  title: Text(
                    'Notification',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  
                  ),
                ),
              ),
              ListView.builder(
                padding: const EdgeInsets.only(top: 5),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: notification.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(
                      notification[index].title,
                      style: const TextStyle(
                          fontSize: 18,
                      ),
                    ),
                  );
                }
              ),        
            ],
          ),
        )
    );
  }
}