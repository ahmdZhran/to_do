import 'package:flutter/material.dart';

class DetailsTaskWidget extends StatelessWidget {
  const DetailsTaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description'),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'date',
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'subDate',
          ),
        ),
      ],
    );
  }
}
