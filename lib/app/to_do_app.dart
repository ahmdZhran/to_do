import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/core/utls/app_router.dart';
import 'package:to_do/core/utls/app_strings.dart';
import 'package:to_do/features/home/presentation/view_model/task_cubit/task_cubit.dart';
import 'package:to_do/features/home/presentation/views/home_view.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: MaterialApp(
        onGenerateRoute: AppRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
}
