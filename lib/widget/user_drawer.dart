
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
  List<User> profileList = [
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
               itemCount: profileList.length,
               itemBuilder: (context,index){
                 return ListTile(
                   leading: CircleAvatar(
                     radius: 30,
                     backgroundImage: NetworkImage(profileList[index].img, ),
                     
                   ),
                   title: Text(
                     profileList[index].name,
                     style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     ),
                     ),
                   subtitle: Text(
                     profileList[index].email,
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
                icon: const Icon(Icons.logout,color: Colors.black, size: 20,)
              ),
              title: const Text(
                'Log Out',
                style: TextStyle( 
                  fontSize: 16,
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