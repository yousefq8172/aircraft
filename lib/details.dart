import 'package:aircraft/aircraft.dart';

import 'package:flutter/material.dart';

class  Details extends StatelessWidget {
    Details({super.key,required this.aircraft});
    final Aircraft aircraft ;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text("information: ${aircraft.information}" )),
      ),

      
      );






  }
}
   












       






  
