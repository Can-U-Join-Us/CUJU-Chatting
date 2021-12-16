import 'package:chat/entrance_page/entrance_page.dart';
import 'package:chat/entrance_page/local_utils/EntranceProvider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart' show ChangeNotifierProvider;


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAxXld32l6GNa74VMrEb88zqNOZJPhAkNw",
        appId: "chatt-c12a7",
        messagingSenderId: "372363088145",
        projectId: "chatt-c12a7")
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create : (context) => EntranceProvider(), child: EntrancePage());
  }
}