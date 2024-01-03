import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/data/models/task_model.dart';
import 'package:to_do/features/add_task/presentation/view_model/add_task_cubit/add_task_cubit.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_button.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_text_form_field.dart';

class CustomFormWidget extends StatelessWidget {
  const CustomFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTaskCubit, AddTaskState>(
      builder: (context, state) {
        // Retrieve the AddTaskCubit instance from the BlocProvider
        AddTaskCubit addTaskCubit = BlocProvider.of<AddTaskCubit>(context);

        return Form(
          key: addTaskCubit.addNoteFromKey,
          child: Column(
            children: [
              // CustomTextFormField for task title
              CustomTextFomField(
                onChanged: (title) {
                  addTaskCubit.taskTitle = title;
                },
                lableText:
                    AppStrings.addYourTask, // Corrected typo in label text
              ),
              const SizedBox(height: 30),
              // CustomTextFormField for task description
              CustomTextFomField(
                onChanged: (subTitle) {
                  addTaskCubit.taskSubTitle = subTitle;
                },
                lableText: AppStrings.addNewTask,
              ),
              const SizedBox(height: 20),
              // Widget to get a button for actions in the add task view
              SizedBox(
                height: 50,
                child: CustomButton(
                  onPressed: () {
                    handleAddTask(addTaskCubit);
                  },
                  text: const Text(AppStrings.addTask),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Function to handle adding a task
  void handleAddTask(AddTaskCubit addTaskCubit) {
    // Validate the form
    if (addTaskCubit.addNoteFromKey.currentState!.validate()) {
      // Create a TaskModel with the provided information
      TaskModel task = TaskModel(
          taskTitle: addTaskCubit.taskTitle!,
          subTitle: addTaskCubit.taskSubTitle!,
          date: DateTime.now().toString());

      // Call the addNotes method in the AddTaskCubit to add the task
      addTaskCubit.addNotes(task);
    }
  }
}
