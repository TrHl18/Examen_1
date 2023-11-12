import 'package:flutter/material.dart';
import 'package:flutter_examen/src/pages/home_page.dart';
import 'package:flutter_examen/src/pages/Moneda/moneda_page.dart';
import 'package:flutter_examen/src/pages/Noticias/noticias_page.dart';
import 'package:flutter_examen/src/pages/Podcast/podcast_page.dart';
import 'package:flutter_examen/src/pages/Tareas/tareas_page.dart';
import 'package:flutter_examen/src/pages/home_page.dart';



Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
'/' :(context) => const HomePages(),
  '/opcion1': (context) => NoticiasPage(),
   '/opcion2': (context) => MonedaPage(),
   '/opcion3': (context) => TareasPage(),
    '/opcion4': (context) => PodcastPage(),
  };
}