import 'package:flutter/material.dart';
import 'package:projectname/app/app.dart';
import 'package:projectname/app/di.dart';

void main() async {
  await initDI();
  runApp(App());
}
