
import 'package:flutter/material.dart';
import 'package:untitled1/pages/user_profile_page.dart';

import '../constants/constant_color.dart';
import '../models/person_models.dart';
import '../widget/profile_widget.dart';
import '../widget/pswfield_widget.dart';
import '../widget/textfield_widget.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  List<User> users = [
  User(
    img: 'assets/profile_pic.png',
    name: "Minami Fuji",
    email: "minamifuji@gmail.com",
    password: "12345678",
    phoneNumber: "098765432"
  ),
  // User(
  //   img: "https://i.pinimg.com/564x/5a/7b/1f/5a7b1f73d85e9c045318649e9e353cea.jpg"
  // )
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgHexColor,

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
            color: bgHexColor,
          ),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: users.length,
            itemBuilder: (context, index){
              return Column(
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
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),

                Column(
                  children:[

                    TextFieldWidget(
                      label: 'Email', 
                      text: users[index].email
                    ),

                    // TextFieldWidget(
                    //   label: 'Email', 
                    //   text: users[index].email
                    // ),
                    PasswordFieldWidget(
                      label: 'Password',
                      text: users[index].password, 
                    ),
                    // TextFieldWidget(
                    //   label: 'Phone Number', 
                    //   text: users[index].phoneNumber
                    // ),

                    Container(
                      margin: const EdgeInsets.only(
                        top: 28
                      ),
                      width: 124,
                      height: 47,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: btnHexColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ),
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: (){
                          Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => const UserProfile())
                          );
                        },
                      ),
                    )
                  ],

                )
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}