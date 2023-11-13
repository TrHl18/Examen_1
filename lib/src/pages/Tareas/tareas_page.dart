import 'package:flutter/material.dart';

class TareasPage extends StatelessWidget{
 TareasPage({super.key});

final List<String> tareas = [
    'Foro 6.1 Investigación sobre tendencias tecnologicas',
    'Tarea 6.1 Avance Proyecto',
    'Tarea 6.2 Investigacion',
  ];

@override

Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: Text("Tareas Pendientes"), backgroundColor: Colors.red,
    actions: [
   IconButton(
      icon: Icon(Icons.search),
   onPressed: () {
            },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
            },
            ),
    ],
    ),
body: TareasPendientes(tareas: tareas) , 
floatingActionButton: FloatingActionButton(
  onPressed:(){}, 
tooltip: 'Nueva Tarea', backgroundColor: Colors.red,
child: Icon(Icons.note_alt_outlined),),


);
}
}
class TareasPendientes extends StatelessWidget {
  final List<String> tareas;

  TareasPendientes({required this.tareas});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tareas.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(tareas[index]),
        
        );
      },
    );
  }
}