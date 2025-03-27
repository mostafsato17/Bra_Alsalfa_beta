import 'package:flutter/material.dart';

class HomeStartgameButtomWidget extends StatelessWidget {
  final Function()? onTap;
  const HomeStartgameButtomWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          onTap;
        },
        borderRadius: BorderRadius.circular(20),
        splashColor: Colors.white24,
        child: Container(
          width: 260,
          height: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.orange.withValues(alpha: 0.6),
                blurRadius: 15,
                offset: Offset(5, 5),
              ),
              BoxShadow(
                color: Colors.deepOrange.withValues(alpha: 0.4),
                blurRadius: 10,
                offset: Offset(-5, -5),
              ),
            ],
          ),
          child: Text(
            'إبدأ اللعب',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
