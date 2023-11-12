import 'package:flutter/material.dart';

class MonedaPage extends StatelessWidget{
const MonedaPage({super.key});
@override

Widget build(BuildContext context){
  return Scaffold(
body: const Center(
  child: Text("Cambio de Moneda"),
),
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.exit_to_app),
      onPressed: () => Navigator.pop(context)),
);

}
}