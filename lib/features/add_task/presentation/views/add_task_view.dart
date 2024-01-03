import 'package:flutter/material.dart';
import 'package:to_do/features/add_task/presentation/widgets/back_to_home_view.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_form_widget.dart';
import 'package:to_do/features/add_task/presentation/widgets/get_buttons.dart';
import 'package:to_do/features/add_task/presentation/widgets/head_add_task_text.dart';
import 'package:to_do/features/add_task/presentation/widgets/sub_text.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            // Widget to navigate back to the home view
            BackToHomeView(),
            SizedBox(height: 40),
            // Widget for the heading of the add task view
            HeadAddTaskText(),
            SizedBox(height: 100),
            // Widget for the subheading of the add task view
            SubTextHead(),
            // Widget for the custom form to input task details
            CustomFormWidget(),
            SizedBox(height: 20),
            // Widget to get buttons for actions in the add task view
            GetButtons()
          ],
        ),
      ),
    );
  }
}
