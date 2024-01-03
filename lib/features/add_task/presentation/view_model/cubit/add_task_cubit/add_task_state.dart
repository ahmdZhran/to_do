part of '../add_task_cubit/add_task_cubit.dart';

@immutable
abstract class AddTaskState {}

class AddTaskInitial extends AddTaskState {}

class AddTaskSuccess extends AddTaskState {}

class AddTaskLoading extends AddTaskState {}

class AddTaskFailer extends AddTaskState {
  final String errMessage;

  AddTaskFailer(this.errMessage);
}
