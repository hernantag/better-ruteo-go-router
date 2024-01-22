import 'package:flutter/material.dart';
import 'package:ruteo_efectivo/configs/routes/routes.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key, required this.params});

  final int params;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Screen 2",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(),
          Text("Number received as param: $params"),
          ElevatedButton(
              onPressed: () {
                RuteoEfectivo.screen3.pushTo(context: context);
              },
              child: const Text("Go to screen 3"))
        ],
      ),
    );
  }
}
