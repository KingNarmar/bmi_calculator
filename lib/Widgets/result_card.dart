import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
    required this.bmi,
    required this.resultText,
    required this.resultDiscripe,
  });

  final double bmi;
  final String resultText;
  final String resultDiscripe;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(AppColors.cardColor),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          const SizedBox(height: 85),
          Text(
            resultText,
            style: const TextStyle(
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
          Text(
            textAlign: TextAlign.center,
            resultDiscripe,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
