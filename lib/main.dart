import 'package:flutter/material.dart';
import 'package:neomorphic_calculator/constants.dart';
import 'package:neomorphic_calculator/widgets/keyboard.dart';
import 'package:neomorphic_calculator/widgets/navigation_tab.dart';
import 'package:neomorphic_calculator/widgets/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: AppColors.greyMystic,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavigationTab(),
              Result(),
              KeyBoard(),
            ],
          ),
        ),
      ),
    );
  }
}
