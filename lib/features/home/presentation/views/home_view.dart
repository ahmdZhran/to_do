import 'package:flutter/material.dart';
import 'package:to_do/features/home/presentation/widget/custom_divider.dart';
import 'package:to_do/features/home/presentation/widget/custom_floating_action_button.dart';
import 'package:to_do/features/home/presentation/widget/custom_list_card.dart';
import 'package:to_do/features/home/presentation/widget/head_text_widget.dart';
import 'package:to_do/features/home/presentation/widget/task_indicator_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeadTextWidget(),
                ],
              ),
            ),
            CustomDivider(),
            SliverToBoxAdapter(
              child: TaskIndicatorRow(),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: CustomListCardItem(),
            )
          ],
        ),
      ),
    );
  }
}
