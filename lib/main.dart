// ignore_for_file: prefer_const_constructors

//import 'package:componentes/src/pages/home_temp.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/alert_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
      Locale('en', 'US'), // English, no country code
      Locale('es', 'ES'), // Spanish, no country code
  ],
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),

      //Rutas disponibles de mi aplicación, diferentes pantallas
      initialRoute: '/',
      routes: getApplicationRoutes(),

      //onGenerateRoute: (RouteSettings settings ){

        //print('Ruta llamada: ${ settings.name }' ); //llamamos la ruta que se selecciona o pantalla y la muestra desde la terminal aunque haya error, así se identifica

        //return MaterialPageRoute(
          //builder: ( BuildContext context ) => AlertPage()
        //);
      //},
    );
  }
}