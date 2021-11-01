import 'package:flutter/material.dart';
import './page/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'easy drive',
        initialRoute: '/',
        routes: {
          '/': (context) => login_page(),
        },
      ),
    );
  }
}
