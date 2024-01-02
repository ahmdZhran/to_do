// Importing necessary packages and custom widgets
import 'package:flutter/material.dart';
import 'package:to_do/features/home/presentation/widget/custom_divider.dart';
import 'package:to_do/features/home/presentation/widget/custom_floating_action_button.dart';
import 'package:to_do/features/home/presentation/widget/custom_list_card.dart';
import 'package:to_do/features/home/presentation/widget/head_text_widget.dart';
import 'package:to_do/features/home/presentation/widget/task_indicator_row.dart';

// Defining the HomeView class, extending StatelessWidget
class HomeView extends StatelessWidget {
  // Constructor for the HomeView class
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold widget for the overall screen structure
    return const Scaffold(
      // Floating action button for adding new tasks
      floatingActionButton: CustomFloatingActionButton(),
      // SafeArea to ensure content is not obscured by device insets
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Empty space at the top of the screen
            SliverToBoxAdapter(child: SizedBox(height: 20)),

            // Row for displaying a heading text in the center
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeadTextWidget(),
                ],
              ),
            ),

            // Custom divider for separating sections
            CustomDivider(),

            // Row for displaying task completion indicators
            SliverToBoxAdapter(
              child: TaskIndicatorRow(),
            ),

            // Empty space between sections
            SliverToBoxAdapter(child: SizedBox(height: 20)),

            // Custom card for displaying a list of tasks
            SliverToBoxAdapter(
              child: CustomListCardItem(),
            )
          ],
        ),
      ),
    );
  }
}
