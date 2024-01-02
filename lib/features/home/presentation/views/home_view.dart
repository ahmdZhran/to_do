import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_colors.dart';
import 'package:to_do/features/home/presentation/widget/custom_divider.dart';
import 'package:to_do/features/home/presentation/widget/custom_floating_action_button.dart';
import 'package:to_do/features/home/presentation/widget/custom_list_tile.dart';
import 'package:to_do/features/home/presentation/widget/head_text_widget.dart';
import 'package:to_do/features/home/presentation/widget/task_indicator_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            const SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeadTextWidget(),
                ],
              ),
            ),
            const CustomDivider(),
            const SliverToBoxAdapter(
              child: TaskIndicatorRow(),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: SizedBox(
                width: double.infinity,
                height: 720,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return AnimatedContainer(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      decoration: BoxDecoration(
                          color: AppColors.kGreyColor,
                          borderRadius: BorderRadius.circular(12)),
                      duration: const Duration(milliseconds: 600),
                      child: const CustomListTile(),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
