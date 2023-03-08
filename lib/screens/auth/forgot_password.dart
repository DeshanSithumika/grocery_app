import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/utils/assets_constants.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _email = TextEditingController();

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
                "Forgot Password",
                fontSize: 25,
              ),
              const SizedBox(height: 40),
              Image.asset(
                AssetsConstants.fruitPath,
                width: 202,
                height: 138,
              ),
              const SizedBox(height: 100),
              const CoustomText(
                "Please, enter your email address. You will receive a link to create a new password via email.",
                fontSize: 14,
                color: Colors.black,
              ),
              const SizedBox(height: 20),
              CustomTextfield(
                controller: _email,
                hintText: "Email",
              ),
              const SizedBox(height: 53),
              CustomButton(onTap: (() {}), text: "Send"),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
