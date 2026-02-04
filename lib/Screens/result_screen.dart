import 'package:bmi_calculator/Widgets/botton.dart';
import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmi});
  final double bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.primaryColor),
      appBar: AppBar(
        automaticallyImplyLeading: false,

        elevation: 3,
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Color(AppColors.white),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(AppColors.primaryColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your Result",
              style: TextStyle(
                color: Color(AppColors.white),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(AppColors.cardColor),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 85),
                    const Text(
                      "Normal",
                      style: TextStyle(
                        color: Color(AppColors.green),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 33),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: const TextStyle(
                        color: Color(AppColors.white),
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      "You Have a Normal Body Weight,Good Job.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(AppColors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 49),
            Botton(
              text: "Re-Calculate",
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
