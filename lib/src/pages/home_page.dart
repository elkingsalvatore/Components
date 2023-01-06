// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';

import 'package:componentes/providers/menu_providers.dart';
import 'package:componentes/utils/icono_string_util.dart';
import 'package:componentes/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Componentes'),
    ),
    body: _lista(),
    );
  }
  
  Widget _lista() {

    
    //menuProvider.cargarData()
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){
   
        return ListView(
          children: _listaItems(snapshot.data!, context),
        );

      });
  }
    //return ListView(
    // children: _listaItems(),
    //);

  }
  
  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [];

    data.forEach( (opt) {

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']), //llmamos la función para poder leer los String de los icons y asignarlos
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {  

          Navigator.pushNamed(context, opt['ruta']);


          //poder brindar la ruta de la siguiente página
          //final route = MaterialPageRoute(
          //  builder: (context) => AlertPage()
          //);
          
          //Navigator.push(context, route); //se debe pasar al children, linea29 y al widget40 
        
        },
      );

      opciones..add( widgetTemp)
              ..add(Divider() );
    });
    
    return opciones;

  }