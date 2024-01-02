import 'package:flutter/material.dart';
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
                icon: const Icon(Icons.arrow_back),
              ),
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
