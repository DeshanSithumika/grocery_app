import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import '../screens/auth/signup.dart';
import '../screens/home/home_screen.dart';
import '../utils/util_functions.dart';

class Authcontraller {
  //-----initialize the user and listen to the auth state

  static Future<void> initializeUser(BuildContext context) async {
    //------register this listner
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        //----if the user object is null---that means the user is singed out or not exists
        //-----so send to the singuo
        Logger().i("User is currently signed out!");
        UtilFunctions.navigateTo(context, const SignUp());
      } else {
        //---if user is not null,that means the auth state is logged in
        //---so redirect the user to home
        Logger().i("User is signed in!");
        UtilFunctions.navigateTo(context, const HomeScreen());
      }
    });
  }
}
