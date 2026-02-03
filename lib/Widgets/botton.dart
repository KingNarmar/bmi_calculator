import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
  const Botton({super.key, this.onPressed, required this.text});
  final Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          const Color(AppColors.buttonColor),
        ),
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
        shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Color(AppColors.white), fontSize: 30),
      ),
    );
  }
}
