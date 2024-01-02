import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/presentation/widgets/back_to_home_view.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_button.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_text_form_field.dart';
import 'package:to_do/features/add_task/presentation/widgets/head_add_task_text.dart';
import 'package:to_do/features/add_task/presentation/widgets/sub_text.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const BackToHomeView(),
            const SizedBox(height: 40),
            const HeadAddTaskText(),
            const SizedBox(height: 100),
            const SubTextHead(),
            const CustomTextFomField(
              lableText: 'add you task',
            ),
            const SizedBox(height: 30),
            const CustomTextFomField(
              lableText: 'Description',
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: CustomButton(
                      color: AppColors.kGreyColor,
                      onPressed: () {},
                      text: const Text(AppStrings.deleteTask),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: CustomButton(
                      onPressed: () {},
                      color: AppColors.knavyColor,
                      text: const Text(AppStrings.addTask),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
