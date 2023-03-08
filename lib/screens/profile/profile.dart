import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/screens/auth/signup.dart';
import 'package:grocery_app/utils/util_functions.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CoustomText(
                "Profile",
                fontSize: 25,
              ),
            ],
          ),
          const SizedBox(height: 122),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.green, width: 2),
            ),
            child: const Icon(
              Icons.person,
              size: 80,
            ),
          ),
          const SizedBox(height: 30),
          const CoustomText(
            "Terry Robinson",
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          const SizedBox(height: 8),
          const CoustomText(
            "deshansithumika@gmail.com",
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(height: 220),
          CustomButton(
              onTap: () {
                UtilFunctions.navigateTo(context, const SignUp());
              },
              text: "Logout"),
        ],
      )),
    );
  }
}
