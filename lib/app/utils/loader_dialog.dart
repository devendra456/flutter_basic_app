import 'package:flutter/material.dart';

import '../widgets/loader_widget.dart';

class LoaderDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const LoaderWidget();
      },
    );
  }

  static void hide(BuildContext context) {
    Navigator.pop(context);
  }
}
