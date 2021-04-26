import 'package:flutter/material.dart';
import 'package:theclinic/router.dart';
import 'package:firebase_core/firebase_core.dart';

//main() => runApp(MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      initialRoute: '/authen',
    );
  }
}
