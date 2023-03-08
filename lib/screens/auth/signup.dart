import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/screens/auth/login.dart';
import 'package:grocery_app/screens/home/home_screen.dart';
import 'package:grocery_app/utils/assets_constants.dart';
import 'package:grocery_app/utils/util_functions.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 96),
              const CoustomText(
                "SignUp",
                fontSize: 25,
              ),
              const SizedBox(height: 40),
              Image.asset(
                AssetsConstants.fruitPath,
                width: 202,
                height: 138,
              ),
              const SizedBox(height: 20),
              CustomTextfield(
                controller: _name,
                hintText: "Name",
              ),
              const SizedBox(height: 8),
              CustomTextfield(
                controller: _email,
                hintText: "Email",
              ),
              const SizedBox(height: 8),
              CustomTextfield(
                controller: _password,
                hintText: "Password",
                isObscure: true,
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    //redirct page to forgot password
                    UtilFunctions.navigateTo(context, const Login());
                  },
                  child: const CoustomText(
                    "Already have an account?",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 29),
              CustomButton(
                onTap: () {
                  UtilFunctions.navigateTo(context, const HomeScreen());
                },
                text: "SignUp",
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
