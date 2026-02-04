import 'package:bmi_calculator/Screens/result_screen.dart';
import 'package:bmi_calculator/Widgets/age_weight_card.dart';
import 'package:bmi_calculator/Widgets/botton.dart';
import 'package:bmi_calculator/Widgets/gender_card.dart';
import 'package:bmi_calculator/Widgets/height_card.dart';
import 'package:bmi_calculator/helpers/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool isMaleSelected = true;
int height = 180;
int weight = 60;
int age = 20;
double bmi = 0;

String resultDiscripe = "You Have A Normal Body Weight Good Job";

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppColors.primaryColor),
      appBar: AppBar(
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
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: GenderCard(
                      gender: "Male",
                      icon: Icons.male,
                      isSelected: isMaleSelected,

                      onTap: () {
                        setState(() {
                          isMaleSelected = true;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: GenderCard(
                      gender: "Female",
                      icon: Icons.female,
                      isSelected: !isMaleSelected,
                      onTap: () {
                        setState(() {
                          isMaleSelected = false;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: HeightCard(
                height: height,
                onChanged: (value) {
                  setState(() {
                    height = value.toInt();
                  });
                },
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: AgeWeightCard(
                      text: "Weight",
                      number: weight,
                      onAdd: () {
                        setState(() {
                          weight++;
                        });
                      },
                      onRemove: () {
                        setState(() {
                          if (weight > 0) {
                            weight--;
                          }
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: AgeWeightCard(
                      text: "Age",
                      number: age,
                      onAdd: () {
                        setState(() {
                          age++;
                        });
                      },
                      onRemove: () {
                        setState(() {
                          if (age > 0) {
                            age--;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Botton(
              text: "Calculate",
              onPressed: () {
                setState(() {
                  bmi = weight / ((height / 100) * (height / 100));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ResultScreen(bmi: bmi)),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
