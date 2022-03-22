import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restful_api_frist_time/home/service/boredService.dart';

import 'home/home.dart';
import 'home/service/connectivityService.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: (context) => BoredService(),
            ),
            RepositoryProvider(
              create: (context) => ConnectivityService(),
            )
          ],
          child: HomePage(),
        ));
  }
}
