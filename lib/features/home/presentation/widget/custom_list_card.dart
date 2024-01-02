import 'package:flutter/material.dart';
import 'package:to_do/features/home/presentation/widget/task_card.dart';

class CustomListCardItem extends StatelessWidget {
  const CustomListCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 720,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const TaskCardItem();
        },
      ),
    );
  }
}
