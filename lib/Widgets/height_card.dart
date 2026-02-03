import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({super.key, required this.height, this.onChanged});
  final int height;
  final Function(double)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(AppColors.cardColor),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
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
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(AppColors.white),
                ),
              ),
              Text(
                "cm",
                style: TextStyle(fontSize: 20, color: Color(AppColors.white)),
              ),
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: 0,
            max: 220,
            onChanged: onChanged,
            activeColor: Color(AppColors.activeColor),
            inactiveColor: Color(AppColors.white),
          ),
        ],
      ),
    );
  }
}
