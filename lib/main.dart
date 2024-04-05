import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'dashboard/side_navigation_drawer.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCiiD4HK7QGTEDRnmIQMY5GhyQ-JLytawU",
        authDomain: "rental-ambulance-mobile-60158.firebaseapp.com",
        databaseURL: "https://rental-ambulance-mobile-60158-default-rtdb.firebaseio.com",
        projectId: "rental-ambulance-mobile-60158",
        storageBucket: "rental-ambulance-mobile-60158.appspot.com",
        messagingSenderId: "817801668774",
        appId: "1:817801668774:web:a24c5fca19e163f450ec67",
        measurementId: "G-ZL2MVCVDYZ"
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SideNavigationDrawer(),
    );
  }
}

