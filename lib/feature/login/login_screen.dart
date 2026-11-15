import 'package:flutter/material.dart';
import 'package:space/core/app_routes.dart';
import 'package:space/core/app_styles.dart';
import 'package:space/core/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Transform.translate(
              offset: const Offset(0, 45),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    "assets/images/login_img.png",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 16,
                    child: Text(
                      "Explore\nThe\nUniverse",
                      style: AppStyles.loginTitle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 22),
            child: CustomButton(
              buttonText: "explore",
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.homeRoute);
              },
            ),
          ),
        ],
      ),
    );
  }
}
