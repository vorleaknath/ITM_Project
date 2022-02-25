import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

Container signInButton(BuildContext context, isLogin, Function onTap) {
  return Container(
    width: 146,
    height: 50,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        isLogin ? "SIGN IN" : "SIGN UP",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.red;
            }
            return const Color(0xFFE97171);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
    ),
  );
}

// Container reuseButtonHomePage(
//     BuildContext context, String text, SvgPicture image) {
//   return Container(
//     width: 160,
//     height: 160,
//     margin: const EdgeInsets.symmetric(vertical: 25),
//     decoration: const BoxDecoration(
//       color: Color(0xFFFFCACA),
//       borderRadius: BorderRadius.all(Radius.circular(40)),
//       boxShadow: [
//         BoxShadow(
//           color: Colors.black26,
//           blurRadius: 4,
//           offset: Offset(0, 5),
//         )
//       ],
//     ),
//     child: Column(
//       children: [
//         Container(
//           margin: const EdgeInsets.only(top: 20),
//           width: 90,
//           height: 90,
//           child: SvgPicture.asset(),
//         )
//       ],
//     ),
//   );
// }

// Container(
// width: 160,
// height: 160,
// margin: const EdgeInsets.symmetric(vertical: 25),
// decoration: const BoxDecoration(
// color: Color(0xFFFFCACA),
// borderRadius: BorderRadius.all(Radius.circular(40)),
// boxShadow: [
// BoxShadow(
// color: Colors.black26,
// blurRadius: 4,
// offset: Offset(0, 5),
// )
// ],
// ),
// child: Column(
// children: [
// Container(
// margin: const EdgeInsets.only(top: 20),
// width: 90,
// height: 90,
// child: SvgPicture.asset("assets/profile.svg"),
// ),
// const SizedBox(
// height: 5,
// ),
// Text("profile",
// style: GoogleFonts.lilitaOne(
// textStyle: const TextStyle(
// fontWeight: FontWeight.normal, fontSize: 24)))
// ],
// ),
// ),
