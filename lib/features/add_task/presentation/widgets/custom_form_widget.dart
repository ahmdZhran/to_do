import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_button.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_text_form_field.dart';
import '../view_model/cubit/add_task_cubit/add_task_cubit.dart';

class CustomFormWidget extends StatelessWidget {
  const CustomFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddTaskCubit, AddTaskState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
          key: BlocProvider.of<AddTaskCubit>(context).addNoteFromKey,
          child: Column(
            children: [
              const CustomTextFomField(
                lableText: 'add you task',
              ),
              const SizedBox(height: 30),
              const CustomTextFomField(
                lableText: 'Description',
              ),
              const SizedBox(height: 20),
              // Widget to get button for actions in the add task view
              CustomButton(
                onPressed: () {},
                text: const Text(AppStrings.addTask),
              ),
            ],
          ),
        );
      },
    );
  }
}
