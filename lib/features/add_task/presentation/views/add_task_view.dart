import 'package:flutter/material.dart';
import 'package:to_do/features/add_task/presentation/widgets/back_to_home_view.dart';
import 'package:to_do/features/add_task/presentation/widgets/head_add_task_text.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 25),
            BackToHomeView(),
            HeadAddTaskVeiwText(),
          ],
        ),
      ),
    );
  }
}
