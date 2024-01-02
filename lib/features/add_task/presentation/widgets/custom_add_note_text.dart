import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_strings.dart';

class CustomAddNoteText extends StatelessWidget {
  const CustomAddNoteText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.bookmark_outline),
      title: Text(
        AppStrings.addNote,
      ),
    );
  }
}
