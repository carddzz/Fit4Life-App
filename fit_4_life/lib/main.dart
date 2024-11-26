import 'package:flutter/material.dart';
import 'screens/pagina_inicial.dart';

void main() {
  runApp(Fit4LifeApp());
}

class Fit4LifeApp extends StatelessWidget {
  const Fit4LifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fit4Life',
      theme: ThemeData(primarySwatch: Colors.green),
      home: PaginaInicial(),
    );
  }
}
