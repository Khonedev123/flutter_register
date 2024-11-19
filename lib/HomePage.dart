import 'package:flutter/material.dart';
import 'package:flutter_dev/Drawer/drawer.dart';
import 'package:flutter_dev/Register/Image_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBar(),
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: ImagePage(),
    );
  }
}
