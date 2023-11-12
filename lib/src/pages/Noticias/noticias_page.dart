



import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget{
const NoticiasPage({super.key});
@override

Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Noticias Ceutec"),
      ),
body: NoticiasWid(),
  
floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.exit_to_app),
      onPressed: () => Navigator.pop(context))
  );
}
}

class NoticiasWid extends StatelessWidget{
  final List<Noticia> noticias = [
Noticia(
  titulo: 'UNITEC y CEUTEC celebran el triunfo académico de 863 nuevos profesionales hondureños',
      descripcion: 'La Universidad Tecnológica Centroamericana (UNITEC) y el Centro Universitario Tecnológico (CEUTEC), celebraron con orgullo el triunfo académico de los nuevos graduados de pregrado y posgrado de las diferentes carreras a nivel nacional, profesionales que potenciarán el desarrollo del país.',
      imagenUrl: 'https://ceutec.hn/wp-content/uploads/2023/10/graduaciones-unitec-ceutec-05-1024x683.png',
    ),
    Noticia(
      titulo: 'Ceutec impulsa la educación técnica en Honduras con el lanzamiento del programa “Técnico para todos”',
      descripcion: 'Con el compromiso de continuar promoviendo la educación técnica universitaria en el país, el Centro Universitario Tecnológico (CEUTEC) llevó a cabo el lanzamiento del programa “Técnico para todos”, mediante la realización del “Foro de Educación Técnica: Impulsando el crecimiento económico de Honduras”, un espacio creado para proporcionar una visión clara sobre las oportunidades educativas de la mano de las necesidades laborales existentes  en el sector público y privado.',
      imagenUrl: 'https://ceutec.hn/wp-content/uploads/2023/08/06-ceutec-impulsa-la-educacion-tecnica-en-honduras-con-el-lanzamiento-del-programa-tecnico-para-todos.jpg',
    ),
    Noticia(
      titulo: 'CEUTEC LANZAN EN LA CIUDAD DE LA CEIBA CENTRO DE EMPLEABILIDAD',
      descripcion: 'Los alumnos de la institución tendrán la facilidad de acceder al Centro de Empleabilidad donde podrán desarrollar conexiones con el talento y los potenciales empleadores tanto nacionales como internacionales, facilitando así su inserción laboral en el mercado competitivo.',
      imagenUrl: 'https://ceutec.hn/wp-content/uploads/2023/09/centro-de-empleabilidad-lc-01-1024x768.png',
  )
  ];
@override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: noticias.length,
      itemBuilder: (context, index) {
        return NoticiaCard(
          noticia: noticias[index],
        );
      },
    );
  }
}

class Noticia {
  final String titulo;
  final String descripcion;
  final String imagenUrl;

  Noticia({
    required this.titulo,
    required this.descripcion,
    required this.imagenUrl,
  });
}

class NoticiaCard extends StatelessWidget {
  final Noticia noticia;

  NoticiaCard({required this.noticia});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            noticia.imagenUrl,
            fit: BoxFit.cover,
            height: 200.0,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  noticia.titulo,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  noticia.descripcion,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}