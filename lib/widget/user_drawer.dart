import 'package:flutter/material.dart';
import 'package:untitled1/models/user_models.dart';

import '../constants/constant_color.dart';
import '../pages/user_profile_page.dart';

class UserDrawer extends StatefulWidget {

  const UserDrawer({ Key? key }) : super(key: key);

  @override
  State<UserDrawer> createState() => _UserDrawerState();
}

class _UserDrawerState extends State<UserDrawer> {
  List<User> profilList = [
    User(
      name: "Minami Fuji",
      email: "minamifuji@gmail.com",
      img: "https://i.pinimg.com/564x/db/4f/f0/db4ff0711fdd26881addbeede5c56d2b.jpg"
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: anccentHexColor,
      child: SingleChildScrollView(
        child: Column(
         children: [
            DrawerHeader(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
              decoration: BoxDecoration(
                color: mainHexColor,
              ),
             child:  ListView.builder(
               itemCount: profilList.length,
               itemBuilder: (context,index){
                 return ListTile(
                   leading: CircleAvatar(
                     radius: 30,
                     backgroundImage: NetworkImage(profilList[index].img, ),
                     
                   ),
                   title: Text(
                     profilList[index].name,
                     style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 18
                     ),
                     ),
                   subtitle: Text(
                     profilList[index].email,
                     style: const TextStyle(
                       fontSize: 16,
                      //  fontWeight: FontWeight.w500
                     ),
                     
                     ),
                   onTap: () {
                     Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const UserProfile())
                     );
                   },
                 );
               }
             ),
            ),
            ListTile(
              leading: IconButton(
                onPressed: () {}, 
                icon: const Icon(Icons.logout,color: Colors.black, size: 30,)
              ),
              title: const Text(
                'Log Out',
                style: TextStyle( 
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )
                ),
              onTap: () {
                
              },
            )
         ],
        ),
      ),
    );
  }
}