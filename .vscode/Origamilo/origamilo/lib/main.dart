import 'dart:io';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'src/pages/index.dart';

///NOTE:
///if you have an error while running <flutter run>
///run <flutter pub upgrade> and than <flutter run --no-sound-null-safety>
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first',
      home: SplashScreenView(
        navigateRoute: PageEntry(),
        duration: 2200,
        imageSize: 140,
        imageSrc: 'assets/teta-app.png',
        text: '',
        textType: TextType.NormalText,
        textStyle: const TextStyle(
          fontSize: 30.0,
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
