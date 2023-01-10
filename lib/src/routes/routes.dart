import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/input.dart';
import 'package:componentes/src/pages/listview_page.dart';

Map <String, WidgetBuilder> getApplicationRoutes(){

final rutas = <String, WidgetBuilder>{
        '/'      : (context) => HomePage(),
        'alert'  : (context) => AlertPage(),
        'avatar' : (context) => AvatarPage(),
        'card'   : (context)  => CardPage(),
        'inputs' : (context)  => InputPage(),
        'slider' : (context)  => SliderPage(),
        'list'   : (context)  => ListaPage(),
      };

      return rutas;
}