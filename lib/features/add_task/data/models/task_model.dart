import 'package:hive/hive.dart';
part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  final String taskTitle;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;

  TaskModel({
    required this.taskTitle,
    required this.subTitle,
    required this.date,
  });
}
