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
          _cardTipo2()
        ],
      ),
    );
  }
  
  //crear cards o tarjetas, puede servir para los productos y cualquier cliente
  Widget _cardTipo1() {
    return Card(
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
              FloatingActionButton(
                child: Text('Cancel'),
                onPressed: (){},
              ),
              FloatingActionButton(
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
    return Card(
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('http://2.bp.blogspot.com/-RLB-j_B9dPI/VWUYM1q9XuI/AAAAAAAAAUs/B1v5LuJ4R8Y/s1600/Beautiful%2BLandscapes%2Bin%2BSwitzerland%2BWallpaper.jpg'),
            placeholder: AssetImage('assests/jar-loading.gif'),
            fadeInDuration: Duration (milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),


          //Image(
           //image: NetworkImage('http://2.bp.blogspot.com/-RLB-j_B9dPI/VWUYM1q9XuI/AAAAAAAAAUs/B1v5LuJ4R8Y/s1600/Beautiful%2BLandscapes%2Bin%2BSwitzerland%2BWallpaper.jpg'
           // ),
          //),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea que poner')
          )
      ],
      ),
     );
    }
}