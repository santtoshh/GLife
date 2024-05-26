import 'package:flutter/material.dart';
import 'package:glife/auth.dart';
import 'package:glife/pages/home_page.dart';
import 'package:glife/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<firebase_auth.User?>(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const LoginPage();
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
