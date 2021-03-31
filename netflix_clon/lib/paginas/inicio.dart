import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflix_clon/componentes/carte_principal.dart';
import 'package:netflix_clon/componentes/item_redondeado.dart';
import 'package:netflix_clon/componentes/item_img.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.ListaHorizontal('Avances', ItemRedondeado(), 9),
          SizedBox(height: 10.0,),
          this.ListaHorizontal('Porgramas sobe viajes en el tiempo', ItemImg(), 7),
          SizedBox(height: 10.0,),
          this.ListaHorizontal('Tendencias', ItemImg(), 7),
          SizedBox(height: 10.0,),
          this.ListaHorizontal('Mi lista', ItemImg(), 7),
          SizedBox(height: 20.0,),
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }
  BottomNavigationBar navInferior(){
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,

      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Inicio', style: TextStyle(fontSize: 10.0)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Buscar', style: TextStyle(fontSize: 10.0)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          title: Text('Proximamanete', style: TextStyle(fontSize: 10.0)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          title: Text('Descargas', style: TextStyle(fontSize: 10.0)),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          title: Text('Mas', style: TextStyle(fontSize: 10.0)),
        ),
      ],
    );
  }
  Widget ListaHorizontal(String titulo, Widget item, int cantidad){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal:6.0, vertical: 10.0),
          child: Text(
            titulo, 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ), 
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index){
              return item;
            },          
          ),
        ),
      ],
    );
  }
}
