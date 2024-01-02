import 'package:flutter/material.dart';
import 'package:to_do/features/home/presentation/widget/custom_divider.dart';
import 'package:to_do/features/home/presentation/widget/head_text_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
          ],
        ),
      ),
    );
  }
}
