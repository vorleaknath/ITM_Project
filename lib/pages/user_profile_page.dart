import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled1/pages/homepage.dart';
import 'package:untitled1/widget/readInfo_widget.dart';
import '../constants/constant_color.dart';
import '../models/person_models.dart';
import '../widget/profile_widget.dart';
import 'edit_profile.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({ Key? key }) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
List<User> users = [
  User(
    img: 'assets/profile_pic.png',
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
            Navigator.push(context,
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
                    
                    ProfileShap(
                      child: Stack(
                    
                        children: [
                     
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(users[index].img),
                                fit: BoxFit.fill
                              )
                            ),
                          ),
                      
                        ],
                      ),
                    ),
                    
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text("Profile",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                 Column(
                    children: [
                      //Display Username
                      ReadInfo(
                        text: users[index].name, 
                        iconData: Icons.person
                      ),

                      //Display User Email
                      ReadInfo(
                        text: users[index].email, 
                        iconData: Icons.email
                      ),

                      //User's Password
                      ReadPassword(
                        text: users[index].password, 
                        iconData: Icons.lock
                      ),

                      //Display User Phone Number
                      ReadInfo(
                        text: users[index].phoneNumber, 
                        iconData: Icons.phone
                      ),

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