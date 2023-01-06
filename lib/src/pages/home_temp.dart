// ignore_for_file: prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors, prefer_function_declarations_over_variables, unused_element

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //const HomePageTemp({super.key});
  final opciones = ['uno','dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes Temp'),
        ),
        body: ListView(
         //children: _crearItems()
         children: _crearItemsCorta()
        ),
    );
  }


  List<Widget> _crearItems() {


    List<Widget> lista = [];
    
    for (String opt in opciones) { 

      final tempWidget = ListTile(
        title: Text (opt),
      );

      lista..add( tempWidget )
           ..add( Divider()); //cascada
      //lista.add( Divider() );

    }


    return lista;
  }
  
  List<Widget> _crearItemsCorta() {
    
    return opciones.map( (item){

      return Column(
        children: [
          ListTile(
            title: Text ('$item!'),
            subtitle: Text('Prueba de subtitle'),
            leading: Icon( Icons.account_balance_wallet ),
            trailing: Icon( Icons.keyboard_arrow_right ),
            onTap: () {},
          ),
          Divider()
        ],
      );

    }).toList();

    }

}