


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PodcastPage extends StatelessWidget{
const PodcastPage({super.key});
@override

Widget build(BuildContext context){
 return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Musica'),
           actions: [
              IconButton(
      icon: Icon(Icons.music_note),
   onPressed: () {
            },
            ),
           ],
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: 'Principal',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Explorar',
                icon: Icon(Icons.explore),
              ),
              Tab(
                text: 'Biblioteca',
                icon: Icon(Icons.library_music_outlined),
              ),
            ],
          ),
        ),
     body: TabBarView(
        children:  <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
            Text("Reproduciendo", style: TextStyle(fontSize: 20.0),),
              Image.network('https://www.hollywoodreporter.com/wp-content/uploads/2015/10/adele_hello_cover_art_s.jpg?w=2000&h=1126&crop=1'),
              SizedBox(height: 20.0),
                  Text(
                    'Adele - Hello',),
          SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.settings_backup_restore_rounded),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.play_arrow),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.skip_next),
                        onPressed: () {},
                      ),
                    ],
              ),
              SizedBox(height: 20.0,),
              LinearProgressIndicator(
                value: 0.7, backgroundColor: Colors.white24, valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
              )
            
              ],
            ),         
          ),
          Center(
            child: Text("Nuevos Lanzamientos"),
          ),
          Center(
            child: Text("Tus Canciones"),
          ),
        ],
     ),
      ),
        
    );
  }
}