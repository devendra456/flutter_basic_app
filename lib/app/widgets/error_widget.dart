import 'package:flutter/material.dart';


class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: const Text(
        """🅔🅡🅡🅞🅡
        ⚠️ SOMETHING WENT WRONG ⚠️""",
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
