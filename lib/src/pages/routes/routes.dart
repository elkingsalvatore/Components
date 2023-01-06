
import 'package:flutter/material.dart';

import '../home_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';


Map <String, WidgetBuilder> getApplicationRoutes(){

final rutas = <String, WidgetBuilder>{
        '/'      : (context) => HomePage(),
        'alert'  : (context) => AlertPage(),
        'avatar' : (context) => AvatarPage(),
        'card'   : (context)  => CardPage(),
      };

      return rutas;
}