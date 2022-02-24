import 'package:flutter/material.dart';

import '../constants/constant_color.dart';
import '../models/user_models.dart';
import '../widget/reuse_label.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({ Key? key }) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
List<User> users = [
  User(
    img: "https://i.pinimg.com/564x/db/4f/f0/db4ff0711fdd26881addbeede5c56d2b.jpg",
    name: "Minami Fuji",
    email: "minamifuji@gmail.com",
    password: "*******",
    phoneNumber: "098765432"
  )
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgHexColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        shadowColor: null,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: bgHexColor,
        ),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // border: Border.all(color: mainHexColor, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: const Offset(0,2),
                            // spreadRadius: 1,
                            blurRadius: 3
                          )
                        ]
                      ),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(users[index].img),
                      ),
                    ),
                    Text(users[index].name,
                     style: const TextStyle(
                       fontSize: 24,
                       fontWeight: FontWeight.bold,
                     ),
                    ),
                  ],
                ),
                 Column(
                    children: [
                     LabelContainer(
                       child: ListTile(
                         leading: const Icon(Icons.person),
                         title: Text(
                           users[index].name,
                           style: const TextStyle(
                             fontSize: 18
                           ),
                         ),
                       ),
                     ),
                     LabelContainer(
                       child: ListTile(
                         leading: const Icon(Icons.email),
                         title: Text(
                           users[index].email,
                           style: const TextStyle(
                             fontSize: 18
                           ),
                         ),
                       ),
                     ),
                     LabelContainer(
                       child: ListTile(
                         leading: const Icon(Icons.lock),
                         title: Text(
                           users[index].password,
                           style: const TextStyle(
                             fontSize: 18
                           ),
                         ),
                       ),
                     ),
                      LabelContainer(
                       child: ListTile(
                         leading: const Icon(Icons.phone),
                         title: Text(
                           users[index].phoneNumber,
                           style: const TextStyle(
                             fontSize: 18
                           ),
                         ),
                       ),
                     ),
                      const SizedBox(height: 50,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: btnHexColor,
                          padding: const EdgeInsets.only(
                            left: 50,
                            right: 50,
                            top: 12,
                            bottom: 12
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )

                        ),
                        onPressed: (){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const EditProfile())
                          // );
                        }, 
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
            );
          },
      ),
      )
    );
  }
}