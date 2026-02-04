import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({super.key, required this.height, this.onChanged});
  final int height;
  final Function(double)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(AppColors.cardColor),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Height",
            style: TextStyle(fontSize: 20, color: Color(AppColors.white)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                "$height",
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(AppColors.white),
                ),
              ),
              const Text(
                "cm",
                style: TextStyle(fontSize: 20, color: Color(AppColors.white)),
              ),
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: 120,
            max: 220,
            onChanged: onChanged,
            activeColor: const Color(AppColors.activeColor),
            inactiveColor: const Color(AppColors.white),
          ),
        ],
      ),
    );
  }
}
