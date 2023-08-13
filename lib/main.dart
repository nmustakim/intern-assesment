import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship_assesment_appifylab/controller/selection_controller.dart';
import 'package:internship_assesment_appifylab/screens/powerplay_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final sc = Get.put(SelectionController());
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PowerPlayScreen(),
    );
  }
}



