import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/addTaskView');
      },
      backgroundColor: AppColors.knavyColor,
      child: const Icon(
        Icons.add,
        color: AppColors.kGreyColor,
      ),
    );
  }
}
