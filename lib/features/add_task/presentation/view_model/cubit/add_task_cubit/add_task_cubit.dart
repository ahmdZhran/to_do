import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:meta/meta.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/data/models/task_model.dart';

part 'add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(AddTaskInitial());
  addNotes(TaskModel note) async {
    emit(AddTaskLoading());
    try {
      var notesBox = Hive.box<TaskModel>(AppStrings.notesBoxName);
      await notesBox.add(note);
      emit(AddTaskSuccess());
    } catch (e) {
      AddTaskFailer(e.toString());
    }
  }
}
