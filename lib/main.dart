import 'package:enter_otp_filled/bottom.dart';
import 'package:enter_otp_filled/bottom2.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff000000),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Univest')),
        body: bottom2(),
      ),
    );
  }
}