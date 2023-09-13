


import 'package:aircraft/aircraft.dart';
import 'package:aircraft/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Aircraft"),
            ),
            body: Center(
                child: ListView.builder(
                    itemCount: Aircraft.aircraft.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(Aircraft.aircraft[index].image),
                        title: Text(Aircraft.aircraft[index].name),
                        subtitle: Text(Aircraft.aircraft[index].firstflight),
                        trailing: IconButton(
                            icon: Icon(Icons.ios_share),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Details(aircraft: Aircraft.aircraft[index]);
                                    
                              }));
                            }),
                      );
                    }))));
  }
}