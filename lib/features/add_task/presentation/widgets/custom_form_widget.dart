import 'package:flutter/material.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_text_form_field.dart';
import 'package:to_do/features/add_task/presentation/widgets/get_buttons.dart';

class CustomFormWidget extends StatelessWidget {
  const CustomFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          CustomTextFomField(
            lableText: 'add you task',
          ),
          SizedBox(height: 30),
          CustomTextFomField(
            lableText: 'Description',
          ),
          SizedBox(height: 20),
          // Widget to get buttons for actions in the add task view
          GetButtons(),
        ],
      ),
    );
  }
}
