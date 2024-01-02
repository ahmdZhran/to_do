import 'package:flutter/material.dart';
import 'package:to_do/features/home/presentation/widget/show_lottie.dart';
import 'package:to_do/features/home/presentation/widget/task_card.dart';

class CustomListCardItem extends StatefulWidget {
  const CustomListCardItem({
    super.key,
  });

  @override
  State<CustomListCardItem> createState() => _CustomListCardItemState();
}

class _CustomListCardItemState extends State<CustomListCardItem> {
  // Sample data for testing
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
                  //   //! remove task from database
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
                  // Task card item widget
                  child: const TaskCardItem(),
                );
              },
            )
          // Display Lottie animation if the list is empty, list is empty
          : ShowLottieFileWidget(test: test),
    );
  }
}
