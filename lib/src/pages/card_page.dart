// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  //const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),

      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }
  
  //crear cards o tarjetas, puede servir para los productos y cualquier cliente
  Widget _cardTipo1() {
    return Card(
      elevation: 10.0, 
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue),
            title: Text('Soy el título'),
            subtitle: Text('subtitulo de lo que deseo mostrar, descripción'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancel'),
                onPressed: (){},
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: (){},
              )
        ],
          ),
        ],
    ),
    );
  }

  Widget _cardTipo2() {
     final card = Container(
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://fotos.perfil.com/2022/12/10/trim/1280/720/lionel-messi-vs-paises-bajos-20221210-1469794.jpg'),
            placeholder: AssetImage('assests/jar-loading.gif'),
            fadeInDuration: Duration (milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          //Image(
           //image: NetworkImage('http://2.bp.blogspot.com/-RLB-j_B9dPI/VWUYM1q9XuI/AAAAAAAAAUs/B1v5LuJ4R8Y/s1600/Beautiful%2BLandscapes%2Bin%2BSwitzerland%2BWallpaper.jpg'
           //),
          //),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea que poner')
          )
      ],
      ),
     );
     return  Container(
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, -10.0)

          )
        ],
      ),
       child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
       ),
     );
    }
}