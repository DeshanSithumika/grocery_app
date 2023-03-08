import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/assets_constants.dart';
import '../../controllers/auth_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      //------check users current auth state
      //------register this listner
      Authcontraller.initializeUser(context);
      /*  Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SignUp())); */
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(child: Image.asset(AssetsConstants.fruitPath)),
            const SizedBox(height: 72),
            FadeInUp(
              child: const CoustomText(
                "Shop Your Daily Necessary",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
