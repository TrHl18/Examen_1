


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PodcastPage extends StatelessWidget{
const PodcastPage({super.key});
@override

Widget build(BuildContext context){
  return Scaffold(
appBar: AppBar(title: Text("Musica"), actions: [Icon(Icons.music_note) ],
),
body: Column(
 mainAxisAlignment: MainAxisAlignment.center, 
 children: [

 ],
),
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.exit_to_app),
      onPressed: () => Navigator.pop(context)),
bottomNavigationBar: TabBar(tabs: [
  Tab(
    icon: Icon(Icons.home), text: 'Principal',
  ),
  Tab(
    icon: Icon(Icons.explore), text: "Explorar",
  ),
  Tab(icon: Icon(Icons.library_music_outlined), text: "Biblioteca",),
]

),

);
}
}