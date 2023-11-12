



import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget{
const NoticiasPage({super.key});
@override

Widget build(BuildContext context){
  return Scaffold(
body: const Center(
  child: Text("Noticias"),
),
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.exit_to_app),
      onPressed: () => Navigator.pop(context)),
);
}
}