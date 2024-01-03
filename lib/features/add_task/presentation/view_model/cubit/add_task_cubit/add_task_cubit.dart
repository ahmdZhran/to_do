import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/data/models/task_model.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());
  GlobalKey<FormState> addNoteFromKey = GlobalKey();
  addNotes(TaskModel note) async {
    emit(AddTaskLoading());
    // Asynchronous method to add a new task (note) to the Hive box
    try {
      // Accessing the Hive box for storing TaskModel objects
      var notesBox = Hive.box<TaskModel>(AppStrings.notesBoxName);

      // Adding the provided task (note) to the Hive box
      await notesBox.add(note);
      emit(AddTaskSuccess());
    } catch (e) {
      AddTaskFailer(e.toString());
    }
  }
}
