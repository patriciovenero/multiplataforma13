import 'package:flutter/material.dart';
import 'package:mi_tarea02_flutter/app/view/my_stateful_widget.dart';
import 'package:mi_tarea02_flutter/app/view/splash/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyStatefulWidget(),
    );
  }
}
