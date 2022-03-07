import 'package:flutter/material.dart';
import 'package:farmacia/principal/Principal.dart';

void main() {
  runApp(Farmacia());
}

class Farmacia extends StatelessWidget {
  const Farmacia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Farmaceutica", // Al parecer no es necesario este titulo
      home: Principal(),
    );
  }
}
