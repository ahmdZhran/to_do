import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/core/utls/text_styles.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text(
                AppStrings.addNewTask,
                style: CustomTextStyle.kanitExtraLight
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
