
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:untitled1/pages/homepage.dart';
import 'package:untitled1/widget/reuseButton.dart';
import 'package:untitled1/widget/reuseTextField.dart';
import 'package:untitled1/widget/sign_in_option.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final storage = const FlutterSecureStorage();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.2, 20, 0),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        image: DecorationImage(
                          image: AssetImage("assets/logo.jpg"),
                        )),
                    // logoWidget('assets/logo.jpg')
                  ),
                  Container(
                    height: 40,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/logo_name.png"),
                        )
                    ),
                  ),

                  const SizedBox(height: 20,),
                  const Text(
                    'Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                        color: Color(0xCCE97171)
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    width: 300,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),

                    child: reuseTextField("Email", Icons.email, false, _emailTextController),

                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: passwordTextField("Password", Icons.lock, true, _passwordTextController),
                  ),

                  const SizedBox(height: 25,),
                  signInButton(context, true, () async{
                    try{
                      if(_formKey.currentState!.validate()) {
                        UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text);
                        if (kDebugMode) {
                          print(userCredential.user?.uid);
                          await storage.write(key: "uid", value: userCredential.user?.uid);
                        }
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()
                            )
                        );
                        setState(() {
                        });
                      }
                    }on FirebaseAuthException catch(e) {
                      if(e.code == 'user-not-found'){
                        if (kDebugMode) {
                          print("User not found");
                        }
                      }
                    }
                  }),
                  const SizedBox(height: 40),
                  signInOption(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


