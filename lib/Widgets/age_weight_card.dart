import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class AgeWeightCard extends StatelessWidget {
  const AgeWeightCard({
    super.key,
    required this.text,
    required this.number,
    this.onAdd,
    this.onRemove,
  });
  final String text;
  final int number;
  final Function()? onAdd;
  final Function()? onRemove;
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
            text,
            style: TextStyle(fontSize: 20, color: Color(AppColors.white)),
          ),
          Text(
            "$number",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Color(AppColors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: onRemove,
                backgroundColor: Color(AppColors.activeColor),
                child: Icon(Icons.remove, color: Color(AppColors.white)),
              ),
              SizedBox(width: 10),
              FloatingActionButton(
                onPressed: onAdd,
                backgroundColor: Color(AppColors.activeColor),
                child: Icon(Icons.add, color: Color(AppColors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
