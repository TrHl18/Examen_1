import 'package:flutter/material.dart';

class TareasPage extends StatelessWidget{
const TareasPage({super.key});
@override

Widget build(BuildContext context){
  return Scaffold(
body: const Center(
  child: Text("Lista de Tareas"),
),
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.exit_to_app),
      onPressed: () => Navigator.pop(context)),
);
}
}