import 'package:flutter/material.dart';
import 'package:tugas_galeri/gallery_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: GalleryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
