import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stream_provider/home_page.dart';


void main() {
  runApp(ProviderScope(child: MyApp(),),);
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practice dio",
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
