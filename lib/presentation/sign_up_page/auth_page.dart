import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scholarx/presentation/gpa_page_screen/gpa_page_screen.dart';
import 'package:scholarx/presentation/home_page_screen/home_page_screen.dart';
import 'package:scholarx/presentation/sign_up_page_tab_container_screen/sign_up_page_tab_container_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot){
          if(snapshot.hasData){
            return HomePageScreen();
          }else{
            return SignUpPageTabContainerScreen();
          }
        }),
      ),
    );
  }
}