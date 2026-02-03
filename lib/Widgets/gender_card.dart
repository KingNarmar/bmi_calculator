import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.gender,
    required this.icon,
    this.isSelected = false,
    this.onTap,
  });
  final String gender;
  final IconData icon;
  final bool isSelected;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(AppColors.activeColor)
              : const Color(AppColors.cardColor),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80, color: const Color(AppColors.white)),
            Text(
              gender,
              style: const TextStyle(
                fontSize: 20,
                color: Color(AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
