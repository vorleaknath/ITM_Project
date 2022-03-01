import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled1/pages/homepage.dart';
import 'package:untitled1/pages/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  // final storage = const FlutterSecureStorage();

  MyApp({Key? key}) : super(key: key);


  // Future<bool> checkLoginStatus() async {
  //   String? value = await storage.read(key: "uid");
  //   if (value == null) {
  //     return false;
  //   }
  //   return true;
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  final storage = const FlutterSecureStorage();
  const SplashScreen({Key? key}) : super(key: key);

  Future<bool> checkLoginStatus() async {
    String? value = await storage.read(key: "uid");
    if (value == null) {
      return false;
    }
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 1500,
        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.fade,
        splash: Center(
            child: Image.asset(
              "assets/splash.png",
              width: 150,
              height: 80,
            ),
        ),
        nextScreen: FutureBuilder(
          future: checkLoginStatus(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot){
            if(snapshot.data == false) {
              return const LoginPage();
            }
            return const HomePage();
          },
        ),
    );
  }
}


// if(snapshot.connectionState == ConnectionState.waiting){
//   return Container(
//     color: const Color(0xFFE5E5E5),
//     child: const Center(
//       child: CircularProgressIndicator(),
//     ),
//   );
// }