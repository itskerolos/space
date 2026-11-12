import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText ;
  final void Function()? onPressed;
  const CustomButton({super.key,required this.buttonText,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 18),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.secondaryColor,
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Text(
            buttonText,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
          Spacer(),
          Icon(Icons.arrow_forward,size: 25,),
        ],
      ),
    );
  }
}
