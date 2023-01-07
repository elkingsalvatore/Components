import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  //const MyWidget({super.key});

  @override
  State<InputPage> createState() => _InputPage();
}

class _InputPage extends State<InputPage> {

  String _nombre = ''; //Debo de iniciar mi variable vacía para que no hbay problema con el tipo late

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
           _crearPersona()
        ],
      ),
      
    );
  }
  
  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization:  TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon( Icons.accessibility ),
        icon: Icon( Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
      },
    );
  }
  







 Widget _crearPersona() {

  return ListTile(
    title: Text('Nombre es: $_nombre'),
  );

 }
}