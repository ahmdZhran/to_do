// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_cubit.dart';

@immutable
abstract class TaskState {}

class TaskInitial extends TaskState {}

class TaskSuccess extends TaskState {
  final List<AddTaskCubit> task;
  TaskSuccess({required this.task});
}

class TaskFailer extends TaskState {
  final String errMessage;

  TaskFailer(this.errMessage);
}
