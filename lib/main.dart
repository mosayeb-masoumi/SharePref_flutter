import 'package:flutter/material.dart';
import 'package:test3/home_page.dart';
import 'package:test3/share_pref.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init(); // initialize here ! important
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
      home: HomePage(),
    );
  }
}
