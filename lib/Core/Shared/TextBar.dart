import 'package:flutter/material.dart';
import 'package:test_3/Core/Constant/appcolor.dart';

class Textbar extends StatelessWidget {
  final String name;
  // Icon? icon;
  final String? Function(String?)? valid;
  final TextEditingController? controller;
  final bool? isshow;
  final void Function()? onTapicon;
  const Textbar({
    super.key,
    required this.name,
    this.controller,
    // this.icon,
    required this.valid,
    this.isshow,
    this.onTapicon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: TextFormField(
        obscureText: isshow == null || isshow == false ? false : true,
        validator: valid,
        controller: controller,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          filled: true,
          // fillColor: const Color.fromARGB(255, 214, 207, 180),Color(0xff3A663F)
          fillColor: Color(0xffFCFCFC), //3A663F
          hintText: name,
          // suffixIcon: GestureDetector(
          //   child: icon,
          //   onTap: onTapicon
          // ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color(0xffE09F3E),
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: const Color(0xffE09F3E),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color(0xffE09F3E),
              )),
        ),
      ),
    );
  }
}
