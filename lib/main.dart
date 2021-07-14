import 'package:flash_chat/pages/chat_page.dart';
import 'package:flash_chat/pages/login_page.dart';
import 'package:flash_chat/pages/registration_page.dart';
import 'package:flash_chat/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // theme: ThemeData.dark().copyWith(
      //     textTheme: TextTheme(
      //   body1: TextStyle(color: Colors.black54),
      // )),
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        ChatPage.id: (context) => ChatPage(),
        LoginPage.id: (context) => LoginPage(),
        RegistrationPage.id: (context) => RegistrationPage(),
      },
    );
  }
}
