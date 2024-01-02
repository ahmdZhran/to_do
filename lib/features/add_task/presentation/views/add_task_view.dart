import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do/core/utls/assets.dart';
import 'package:to_do/features/add_task/presentation/widgets/head_add_task_text.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(height: 25),
            ),
            SliverToBoxAdapter(
              child: IconButton(
                  onPressed: () {},
                  icon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppAssets.customArrowIcon),
                  )),
            ),
            const SliverToBoxAdapter(
              child: HeadAddTaskVeiwText(),
            ),
          ],
        ),
      ),
    );
  }
}
