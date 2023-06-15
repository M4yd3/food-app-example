import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'config/injection.dart';
import 'presentation/core/main_app.dart';

void main() async {
  await configureDependencies();

  runApp(const MainApp());
}
