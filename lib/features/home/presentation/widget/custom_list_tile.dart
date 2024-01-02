import 'package:flutter/material.dart';
import 'package:to_do/features/home/presentation/widget/list_tile_body.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //!To Do
        //check on task
      },
      child: const ListTileBody(),
    );
  }
}
