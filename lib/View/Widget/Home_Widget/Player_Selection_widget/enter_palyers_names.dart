import 'package:flutter/material.dart';

class Enter_players_name extends StatelessWidget {
  const Enter_players_name({
    super.key,
    required this.categories,
    required this.onTap,
    required this.data,
  });
  final Function()? onTap;
  final int categories;
  final String data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        width: 200,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.orange.withValues(alpha: 0.6), blurRadius: 15, offset: Offset(5, 5)),
            BoxShadow(color: Colors.deepOrange.withValues(alpha: .4), blurRadius: 10, offset: Offset(-5, -5)),
          ],
        ),
        child: Text(
          data,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
