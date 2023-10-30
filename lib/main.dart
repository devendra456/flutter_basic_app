import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/widgets/error_widget.dart';

void main() {
  addErrorWidget();
  runApp(const MyApp());
}

void addErrorWidget() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    if (kDebugMode) {
      return ErrorWidget(details.exception);
    }
    return const AppErrorWidget();
  };
}
