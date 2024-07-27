import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/views/buyers/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: 'AIzaSyBqzyeHXf361YZ1tUImRc1qpBM9f3SjyuI',
              appId: '1:520442974585:android:8f7b72f4fda0da219f9fa8',
              messagingSenderId: '520442974585',
              projectId: 'port-store-79f96',
              storageBucket: 'gs://port-store-79f96.appspot.com'
              ))
      : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Brand-Bold'),
      home: MainScreen(),
    );
  }
}
