import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '../add_task_cubit/task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());
}
