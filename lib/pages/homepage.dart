import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/pages/chatscreen.dart';
import 'package:untitled1/pages/user_profile_page.dart';
import '../constants/constant_color.dart';
import '../widget/notification_drawer.dart';
import '../widget/user_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        shadowColor: Colors.black,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        title: const Text(
          'Home Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: bgHexColor,
        elevation: 3,
        actions: [
          Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 30,
                ));
          }),
        ],
      ),
      drawer: const UserDrawer(),
      endDrawer: const NotificationDrawer(),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 160,
              height: 160,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const UserProfile()
                      )
                  );
                },
                child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 90,
                        height: 90,
                        child: SvgPicture.asset("assets/profile.svg"),
                      ),
                      const SizedBox( height: 5, ),
                      Text(
                          "Profile",
                          style: GoogleFonts.lilitaOne(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 24,
                                color: Colors.black,

                              )
                          )
                      ),
                    ]
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.red[200];
                    }
                    return const Color(0xFFFFCACA);
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                  ),
                  shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                  elevation: MaterialStateProperty.all(5),
                ),
              ),
            ),
            SizedBox(
              width: 160,
              height: 160,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const ChatScreen()
                      )
                  );
                },
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 90,
                      height: 90,
                      child: SvgPicture.asset("assets/message.svg"),
                    ),
                    const SizedBox( height: 5, ),
                    Text(
                        "Message",
                        style: GoogleFonts.lilitaOne(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 24,
                              color: Colors.black,

                            )
                        )
                    ),
                  ]
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.red[200];
                      }
                      return const Color(0xFFFFCACA);
                    }),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                        ),
                    ),
                  shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                  elevation: MaterialStateProperty.all(5),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 160,
              height: 160,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => const UserProfile()
                  //     )
                  // );
                },
                child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 90,
                        height: 90,
                        child: SvgPicture.asset("assets/upload.svg"),
                      ),
                      const SizedBox( height: 5, ),
                      Text(
                          "Upload",
                          style: GoogleFonts.lilitaOne(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 24,
                                color: Colors.black,

                              )
                          )
                      ),
                    ]
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.red[200];
                    }
                    return const Color(0xFFFFCACA);
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                  ),
                  shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                  elevation: MaterialStateProperty.all(5),
                ),
              ),
            ),
            SizedBox(
              width: 160,
              height: 160,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => const UserProfile()
                  //     )
                  // );
                },
                child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 90,
                        height: 90,
                        child: SvgPicture.asset("assets/history.svg"),
                      ),
                      const SizedBox( height: 5, ),
                      Text(
                          "History",
                          style: GoogleFonts.lilitaOne(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 24,
                                color: Colors.black,

                              )
                          )
                      ),
                    ]
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.red[200];
                    }
                    return const Color(0xFFFFCACA);
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                  ),
                  shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                  elevation: MaterialStateProperty.all(5),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
