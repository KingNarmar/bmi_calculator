import 'package:bmi_calculator/Widgets/botton.dart';
import 'package:bmi_calculator/Widgets/result_card.dart';
import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmi});
  final double bmi;

  String get firstText {
    if (bmi < 18.5) return "Under Weight";
    if (bmi <= 24.9) return "Healthy Weight";
    if (bmi <= 29.9) return "Overweight";
    if (bmi <= 39.9) return "Obesity";
    return "Severe Obesity";
  }

  String get secondText {
    if (bmi < 18.5)return "You are under the normal weight range. Try to eat balanced meals and increase your calorie intake gradually to reach a healthy weight.";
    if (bmi <= 24.9) return "You have a healthy body weight. Keep maintaining your balanced diet and active lifestyle to stay fit and strong.";
    if (bmi <= 29.9) return "You are slightly above the healthy weight range. Consider regular exercise and a balanced diet to improve your overall health.";
    if (bmi <= 39.9) return "Your weight is in the obesity range. Adopting a healthier diet and increasing physical activity can greatly improve your health.";
    return "Your weight is in the severe obesity range. It is strongly recommended to seek professional medical advice for a proper health plan.";
  }

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
              child: ResultCard(
                bmi: bmi,
                resultDiscripe: secondText,
                resultText: firstText,
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
