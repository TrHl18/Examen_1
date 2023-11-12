
import 'package:flutter/material.dart';
import 'package:flutter_examen/src/pages/Moneda/moneda_page.dart';
import 'package:flutter_examen/src/pages/Noticias/noticias_page.dart';
import 'package:flutter_examen/src/pages/Podcast/podcast_page.dart';
import 'package:flutter_examen/src/pages/Tareas/tareas_page.dart';
import 'package:flutter_examen/src/pages/home_page.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
     '/' :(context) => const HomePages(),
  '/opcion1': (context) => NoticiasPage(),
   '/opcion2': (context) => MonedaPage(),
   '/opcion3': (context) => TareasPage(),
    '/opcion4': (context) => PodcastPage(),
      }
    );
  }
}

class HomePages extends StatelessWidget{
  const HomePages({super.key});
@override
Widget build(BuildContext context){
return DefaultTabController(length: 3
, child: Scaffold(
  appBar: AppBar(
    title: const Center(
      child: Text("App Ceutec"),
    ),
  ),
  body: Center(
    child: OpcionesMenu(),
  
  ), 
  ),
  );
}
}

class OpcionesMenu extends StatelessWidget{
    final List <Map<String, dynamic>> menu=[

{'nombre': 'Noticias ',        'ruta': '/opcion1', 'icono': Icons.newspaper},
{'nombre': 'Cambio de Moneda', 'ruta': '/opcion2', 'icono': Icons.euro},
{'nombre': 'Lista de Tareas',  'ruta': '/opcion3', 'icono': Icons.list_outlined},
{'nombre': 'Podcast',           'ruta': '/opcion4', 'icono': Icons.mic},
    ];

@override
Widget build (BuildContext context){
  return ListView.builder(
    itemCount: menu.length,
    itemBuilder: (context, index){
      return ListTile(
        title: Text(menu[index]['nombre']),
         leading: Icon(menu[index]['icono']),
         onTap: () {
            Navigator.pushNamed(context, menu[index]['ruta']);
     },
        );
      },
    );
  }
}