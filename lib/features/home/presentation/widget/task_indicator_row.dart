import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';

class TaskIndicatorRow extends StatelessWidget {
  const TaskIndicatorRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 25,
            height: 25,
            child: CircularProgressIndicator(
              value: 1 / 3,
              backgroundColor: AppColors.kGreyColor,
              valueColor: AlwaysStoppedAnimation(AppColors.knavyColor),
            ),
          ),
          SizedBox(width: 10),
          Text('1 of 3 tasks'),
        ],
      ),
    );
  }
}
