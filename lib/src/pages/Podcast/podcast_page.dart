


import 'package:flutter/material.dart';

class PodcastPage extends StatelessWidget{
const PodcastPage({super.key});
@override

Widget build(BuildContext context){
  return Scaffold(
body: const Center(
  child: Text("Podcast"),
),
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.exit_to_app),
      onPressed: () => Navigator.pop(context)),
);
}
}