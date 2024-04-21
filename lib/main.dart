import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/model/cart_model.dart';
import 'package:sample_app/ui/shop/HomePage.dart';
import 'package:sample_app/ui/shop/intro_page.dart';
import 'package:sample_app/ui/websocket/chat_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
    // return const MaterialApp(
    //   home: ChatApp(),
    // );
  }
}
