import 'package:flutter/material.dart';
import 'package:vaultchatapp/core/constants/string.dart';
import 'package:vaultchatapp/ui/screens/auth/login/loginscreen.dart';
import 'package:vaultchatapp/ui/screens/auth/signup/signup.dart';
import 'package:vaultchatapp/ui/screens/bottomnavigation/chatlist/chatroom/chatroom.dart';
import 'package:vaultchatapp/ui/screens/splashscreen/splashscreen.dart';
import 'package:vaultchatapp/ui/screens/wrapper/wrapper.dart';

import '../../ui/screens/home/homescreen.dart';

class Routeutils {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {

    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case signup:
      return MaterialPageRoute(builder: (context) => SignupScreen());
      case login:
      return MaterialPageRoute(builder: (context) => LoginScreen());
      case home:
      return MaterialPageRoute(builder: (context) => HomeScreen());
      case wrapper:
      return MaterialPageRoute(builder: (context) => Wrapper());
      case chatroom:
      return MaterialPageRoute(builder: (context) => ChatRoom());
      default:
        return MaterialPageRoute(
            builder: (context) =>
                const Scaffold(body: Center(child: Text("no route find"))));
    }
  }
}
