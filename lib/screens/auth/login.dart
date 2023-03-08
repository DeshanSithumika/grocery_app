import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/components/social_button.dart';
import 'package:grocery_app/screens/auth/forgot_password.dart';
import 'package:grocery_app/screens/profile/profile.dart';
import 'package:grocery_app/utils/assets_constants.dart';
import 'package:grocery_app/utils/util_functions.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _email = TextEditingController();
  final _password = TextEditingController();

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
                "Login",
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
                    UtilFunctions.navigateTo(context, const ForgotPassword());
                  },
                  child: const CoustomText(
                    "Forgot your password?",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 29),
              CustomButton(
                onTap: () {
                  UtilFunctions.navigateTo(context, const Profile());
                },
                text: "Login",
              ),
              const SizedBox(height: 23),
              const CoustomText(
                "Or login with social account",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButtons(
                    onTap: () {},
                    iconpath: AssetsConstants.googleIcon,
                  ),
                  const SizedBox(width: 16),
                  SocialButtons(
                    onTap: (() {}),
                    iconpath: AssetsConstants.fbIcon,
                  ),
                ],
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
