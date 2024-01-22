import 'package:flutter/material.dart';
import 'package:ruteo_efectivo/configs/routes/routes.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Screen 1",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: ElevatedButton(
              onPressed: () {
                RuteoEfectivo.screen2.pushTo(context: context, params: 1);
              },
              child: const Text("Go to screen 2")),
        )
      ]),
    );
  }
}
