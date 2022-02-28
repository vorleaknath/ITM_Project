
import 'package:flutter/material.dart';
import 'package:untitled1/pages/user_profile_page.dart';

import '../constants/constant_color.dart';
import '../models/user_models.dart';
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
    img: "https://i.pinimg.com/564x/db/4f/f0/db4ff0711fdd26881addbeede5c56d2b.jpg",
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
      // appBar: AppBar(
      //   backgroundColor: bgHexColor,
      //   // leading: IconButton(
      //   //   icon: const Icon(Icons.arrow_back, color: Colors.black, size: 30,),
      //   //   onPressed: (){
      //   //     Navigator.pop(context);
      //   //   },
      //   // ),
      //   elevation: 0,
      //   shadowColor: null,
      // ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
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
                            image: NetworkImage(users[index].img),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                      Container(
                        // margin: const EdgeInsets.only(
                        //   left: 35,
                        //   top: 35
                        // ),
                        // child: IconButton(
                        //   alignment: Alignment.bottomRight,
                        //   icon: const Icon(
                        //     Icons.camera_alt_rounded, 
                        //     // color: Colors.grey, 
                        //     size: 20,
                        //   ),
                        //   onPressed: (){
                        //   },
                        
                        // ),
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
                      label: 'Full Name', 
                      text: users[index].name
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