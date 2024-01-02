import 'package:flutter/material.dart';
import 'package:to_do/features/add_task/presentation/widgets/back_to_home_view.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_divider1.dart';
import 'package:to_do/features/add_task/presentation/widgets/head_add_task_text.dart';
import 'package:to_do/features/add_task/presentation/widgets/sub_text.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            BackToHomeView(),
            SizedBox(height: 40),
            HeadAddTaskText(),
            SubTextHead(),
            CustomDivider(
              thickness: 5,
            ),
          ],
        ),
      ),
    );
  }
}
