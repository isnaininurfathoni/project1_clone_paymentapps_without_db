import 'package:clone_udbpay_app/screens/listtagihan.dart';
import 'package:clone_udbpay_app/startPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone UDB Pay',
      theme: ThemeData(backgroundColor: Colors.white12),
      home: Test(),
    );
  }
}
