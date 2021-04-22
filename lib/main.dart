import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('CoreUI', 
              style: TextStyle(color: Color.fromARGB(255, 60, 75, 100))),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 235, 237, 239),
            iconTheme: IconThemeData(color: Color.fromARGB(255, 60, 75, 100)),
            
            ),
          drawer: Drawer(
            
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Drawer Header'),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 60, 75, 100)

                    ),
                  ),
                ListTile(
                  title: Text('Item 1'),
                  selectedTileColor: Color.fromARGB(255, 235, 237, 239),
                  onTap: () {
                    //Updates the state of the app
                    //
                    //Close the drawer
                    Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          )
    );
  }
}
