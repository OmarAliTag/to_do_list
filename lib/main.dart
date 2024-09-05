import 'package:flutter/material.dart';
import 'package:to_do_list/Screens/home_screen.dart';
import 'package:to_do_list/network/local_database.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await MyDatabase.initDatabase();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}