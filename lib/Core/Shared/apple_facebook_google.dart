import 'package:flutter/material.dart';

class AppleFacebookGoogle extends StatelessWidget {
  const AppleFacebookGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("images/apple-svgrepo-com.png", height: 20),
        const Text(
          "Apple",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 40,
        ),
        Image.asset("images/facebook-svgrepo-com.png", height: 20),
        const Text(
          "Facebook",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 40,
        ),
        Image.asset("images/google-svgrepo-com.png", height: 20),
        const Text.rich(TextSpan(children: [
          TextSpan(text: 'G', style: TextStyle(color: Color(0xff4086f4), fontWeight: FontWeight.bold)),
          TextSpan(text: 'o', style: TextStyle(color: Color(0xffeb4132), fontWeight: FontWeight.bold)),
          TextSpan(text: 'o', style: TextStyle(color: Color(0xfffbbd01), fontWeight: FontWeight.bold)),
          TextSpan(text: 'g', style: TextStyle(color: Color(0xff4086f4), fontWeight: FontWeight.bold)),
          TextSpan(text: 'l', style: TextStyle(color: Color(0xff30a952), fontWeight: FontWeight.bold)),
          TextSpan(text: 'e', style: TextStyle(color: Color(0xffeb4132), fontWeight: FontWeight.bold)),
        ])),
      ],
    );
  }
}
