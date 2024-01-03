import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/add_task/data/models/task_model.dart';
import 'package:to_do/features/home/presentation/view_model/task_cubit/task_cubit.dart';

import 'package:to_do/features/home/presentation/widget/task_card.dart';

class CustomListCardItem extends StatefulWidget {
  const CustomListCardItem({
    super.key,
  });

  @override
  State<CustomListCardItem> createState() => _CustomListCardItemState();
}

class _CustomListCardItemState extends State<CustomListCardItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 720,
        child: BlocBuilder<TaskCubit, TaskState>(
          builder: (context, state) {
            List<TaskModel> tasks =
                BlocProvider.of<TaskCubit>(context).tasks ?? [];
            return ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  direction: DismissDirection.horizontal,

                  // onDismissed: (_) {
                  //TODO
                  // remove task from database
                  // },
                  background: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.delete_outline),
                      Text(AppStrings.deleteThisTask)
                    ],
                  ),
                  key: Key(
                    index.toString(),
                  ),
                  // Task card item widget
                  child: const TaskCardItem(),
                );
              },
            );
          },
        )
        // Display Lottie animation if the list is empty, list is empty
        // : ShowLottieFileWidget(test: test),
        );
  }
}
