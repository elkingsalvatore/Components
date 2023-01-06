// ignore_for_file: prefer_const_constructors

//import 'package:componentes/src/pages/home_temp.dart';

import 'package:flutter/material.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/alert_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),

      //Rutas disponibles de mi aplicación, diferentes pantallas
      initialRoute: '/',
      routes: getApplicationRoutes(),

      //onGenerateRoute: (RouteSettings settings ){

        //print('Ruta llamada: ${ settings.name }' ); //llamamos la ruta que se selecciona o pantalla y la muestra desde la terminal auqnue haya error, así se identifica

        //return MaterialPageRoute(
          //builder: ( BuildContext context ) => AlertPage()
        //);
      //},
    );
  }
}