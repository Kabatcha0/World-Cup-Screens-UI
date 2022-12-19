import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldcup/cubit/cubit.dart';
import 'package:worldcup/cubit/states.dart';
import 'package:worldcup/modules/homescreen.dart';
import 'package:worldcup/modules/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WorldCubit(),
      child: BlocConsumer<WorldCubit, WorldStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            title: "World cup",
            theme: ThemeData(scaffoldBackgroundColor: Colors.white),
            debugShowCheckedModeBanner: false,
            home: const Splash(),
          );
        },
      ),
    );
  }
}
