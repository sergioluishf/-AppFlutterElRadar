import 'package:flutter/material.dart';
import 'busqueda.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//Comentario
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppMovil_El_Radar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home El Radar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Padding(
                padding:
                EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 0),
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset("image/logo.png"),
                  ),
                ),
              ),

              Padding(
                padding:
                EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 0),
                child: TextField(
                  //controller: buscar,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Búsqueda',
                      hintText: 'Palabra clave de la búsqueda'
                  ),
                ),
              ),

              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(200, 45)),
                    onPressed: () {
                      print("Presionó el botón");
                      //Navigator.push(context,
                      // MaterialPageRoute(builder: (_) => busqueda(buscar.text)));
                    },
                    child: Text('Buscar'),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
