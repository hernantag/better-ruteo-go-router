import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ruteo_efectivo/screens/screen_1.dart';
import 'package:ruteo_efectivo/screens/screen_2.dart';

import '../../screens/screen_3.dart';

enum RuteoEfectivo<T> {
  screen1(
    name: "screen1",
    path: "/",
  ),
  screen2<int>(
    name: "screen2",
    path: "/screen2",
  ),
  screen3(
    name: "screen3",
    path: "/screen3",
  ),
  ;

  const RuteoEfectivo({required this.path, required this.name});

  final String path;
  final String name;

  Future pushTo({required BuildContext context, T? params}) async {
    // ADD EXTRA LOGIC IF YOU NEED IT
    context.push(path, extra: params);
  }
}

final routes = GoRouter(routes: [
  GoRoute(
    path: RuteoEfectivo.screen1.path,
    name: RuteoEfectivo.screen1.name,
    builder: (context, state) => const Screen1(),
  ),
  GoRoute(
    path: RuteoEfectivo.screen2.path,
    name: RuteoEfectivo.screen2.name,
    builder: (context, state) => Screen2(params: state.extra as int),
  ),
  GoRoute(
    name: RuteoEfectivo.screen3.name,
    path: RuteoEfectivo.screen3.path,
    builder: (context, state) => const Screen3(),
  )
]);
