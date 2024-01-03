import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/data/models/task_model.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_button.dart';
import 'package:to_do/features/add_task/presentation/widgets/custom_text_form_field.dart';
import '../view_model/cubit/task_cubit/add_task_cubit.dart';

class CustomFormWidget extends StatelessWidget {
  const CustomFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddTaskCubit, AddTaskState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        AddTaskCubit addTaskCubit = BlocProvider.of<AddTaskCubit>(context);
        return Form(
          key: addTaskCubit.addNoteFromKey,
          child: Column(
            children: [
              CustomTextFomField(
                onChanged: (title) {
                  addTaskCubit.taskTitle = title;
                  print(title);
                },
                lableText: 'add you task',
              ),
              const SizedBox(height: 30),
              CustomTextFomField(
                onChanged: (subTitle) {
                  addTaskCubit.taskSubTitle = subTitle;
                  print(subTitle);
                },
                lableText: 'Description',
              ),
              const SizedBox(height: 20),
              // Widget to get button for actions in the add task view
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

  void handleAddTask(AddTaskCubit addTaskCubit) {
    if (addTaskCubit.addNoteFromKey.currentState!.validate()) {
      TaskModel task = TaskModel(
          taskTitle: addTaskCubit.taskTitle!,
          subTitle: addTaskCubit.taskSubTitle!,
          date: DateTime.now().toString());
      addTaskCubit.addNotes(task);
    }
  }
}
