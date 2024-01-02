import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Divider(
        height: 40,
        indent: 140,
        thickness: 2,
        color: Color(0xffDDE6ED),
      ),
    );
  }
}
