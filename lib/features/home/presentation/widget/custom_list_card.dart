import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/core/utls/assets.dart';
import 'package:to_do/features/home/presentation/widget/task_card.dart';

class CustomListCardItem extends StatefulWidget {
  const CustomListCardItem({
    super.key,
  });

  @override
  State<CustomListCardItem> createState() => _CustomListCardItemState();
}

class _CustomListCardItemState extends State<CustomListCardItem> {
  List<int> test = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 720,
      child: test.isNotEmpty
          ? ListView.builder(
              itemCount: test.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  direction: DismissDirection.horizontal,
                  // onDismissed: (_) {
                  //! remove task from dataBase
                  // },
                  background: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.delete_outline),
                      Text('Delete this task')
                    ],
                  ),
                  key: Key(
                    index.toString(),
                  ),
                  child: const TaskCardItem(),
                );
              },
            )
          : Column(
              children: [
                Lottie.asset(
                  lottieUrl,
                  height: 200,
                  width: 200,
                  animate: test.isNotEmpty ? false : true,
                ),
                const Text(
                  AppStrings.planYourDay,
                ),
              ],
            ),
    );
  }
}
