import 'package:flutter/material.dart';
import 'package:untitled1/pages/homepage.dart';
import 'package:untitled1/widget/readInfo_widget.dart';
import '../constants/constant_color.dart';
import '../models/user_models.dart';
import 'edit_profile.dart';

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
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage())
            );
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
                    const Text("Profile",
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                     ),
                    ),
                  ],
                ),
                 Column(
                    children: [
                     // Container(
                     //   margin: const EdgeInsets.only(top: 10),
                     //   child: ReadInfo(
                     //     users[index].name,
                     //     Icons.person,
                     //   ),
                     // ),
                     Container(
                       child: ReadInfo(
                         users[index].email,
                         Icons.email
                       ),
                     ),

                    Container(
                      child: ReadInfo(
                        users[index].password, 
                        Icons.lock
                      ),
                    ),
                     // Container(
                     //   child: ReadInfo(
                     //     users[index].phoneNumber,
                     //     Icons.phone
                     //   ),
                     // ),
                     
                      Container(
                        height: 48,
                        width: 124,
                        margin: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: btnHexColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)
                            )
                      
                          ),
                          onPressed: (){
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const EditProfile())
                            );
                          }, 
                          child: const Text(
                            'Edit',
                            style: TextStyle(
                              fontSize: 20,
                            ),
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