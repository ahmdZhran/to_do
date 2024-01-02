import 'package:flutter/material.dart';

class TaskIndicatorRow extends StatelessWidget {
  const TaskIndicatorRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.circle_outlined),
          SizedBox(width: 10),
          Text('1 of 3 tasks'),
        ],
      ),
    );
  }
}
