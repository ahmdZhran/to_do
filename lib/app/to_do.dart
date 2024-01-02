import 'package:flutter/material.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/home/presentation/views/home_view.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
