import 'package:flutter/material.dart';
import 'package:project_1/Planets.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final Planets? planet = ModalRoute.of(context)?.settings.arguments as Planets?;


    if (planet == null) {
      return Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          title: Text('Error', style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'No planet data available!',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }


    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text(
          planet.planet_name,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30,40,30,0),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(planet.imageId),
                radius: 50,
              ),
            ),

            Divider(height: 60, color: Colors.grey[800]),

            Text(
              planet.description,
              style: TextStyle(
                color: Colors.white,
                fontSize:20,
                fontWeight: FontWeight.bold,

              ),
            )

      ],
        ),
        ),

    );
  }
}
