import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/data/models/task_model.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());
  GlobalKey<FormState> addNoteFromKey = GlobalKey();

  String? taskTitle;
  String? taskSubTitle;
  String? date;

  addNotes(TaskModel task) async {
    emit(AddTaskLoading());
    // Asynchronous method to add a new task (note) to the Hive box
    try {
      // Accessing the Hive box for storing TaskModel objects
      var tasksBox = Hive.box<TaskModel>(AppStrings.taskesBoxName);

      // Adding the provided task (note) to the Hive box
      await tasksBox.add(task);
      emit(AddTaskSuccess());
    } catch (e) {
      emit(AddTaskFailer(e.toString()));
    }
  }
}
