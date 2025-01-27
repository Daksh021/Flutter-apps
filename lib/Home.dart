import 'package:flutter/material.dart';
import 'package:project_1/Planets.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Planets> planets = [

    Planets(
      planet_name: 'Mercury',
      description: 'Mercury is the smallest planet in our solar system and the closest to the Sun. \n\nIt has no atmosphere, which results in extreme temperature fluctuations between its scorching days and freezing nights. \n\nIts surface is heavily cratered and rocky, resembling the Moon. A day on Mercury is longer than its year due to its slow rotation. \n\nThis planet has no moons or rings and is surrounded by a very thin exosphere composed mainly of oxygen, sodium, and hydrogen.',
      imageId: 'assets/mercury.jpg',
    ),

    Planets(
      planet_name: 'Venus',
      description: 'Venus is often called Earth’s "twin" because of its similar size and structure. \n\nHowever, it has a thick, toxic atmosphere filled with carbon dioxide, leading to a runaway greenhouse effect that makes it the hottest planet in the solar system. \n\nThe surface is covered with volcanic plains and sulfuric acid clouds, making it highly reflective and bright in the night sky. \n\nVenus rotates in the opposite direction to most planets and has a very slow rotation, making a day on Venus longer than its year.',
      imageId: 'assets/venus.jpg',
    ),

    Planets(
      planet_name: 'Earth',
      description: 'Earth is the only planet known to support life, thanks to its ideal conditions. \n\nIts breathable atmosphere, consisting of nitrogen and oxygen, along with abundant liquid water, fosters a diverse range of ecosystems. \n\nEarth’s magnetic field protects it from solar winds, and the ozone layer shields its surface from harmful ultraviolet radiation. \n\nAbout 71% of Earth’s surface is covered with water, and it has one natural satellite, the Moon, which influences its tides.',
      imageId: 'assets/earth.jpg',
    ),

    Planets(
      planet_name: 'Mars',
      description: 'Mars is often referred to as the "Red Planet" due to its iron oxide-rich soil, giving it a rusty appearance. \n\nIt is home to the solar system’s tallest volcano, Olympus Mons, and the deepest canyon, Valles Marineris. \n\nMars has a thin atmosphere, mostly composed of carbon dioxide, which makes it cold and dry. \n\nScientists believe Mars once had flowing water, evidenced by dry riverbeds and polar ice caps, raising the possibility of past life. \n\nMars is orbited by two small moons, Phobos and Deimos.',
      imageId: 'assets/mars.jpg',
    ),

    Planets(
      planet_name: 'Jupiter',
      description: 'Jupiter is the largest planet in the solar system, known for its immense size and powerful magnetic field. \n\nIts atmosphere is primarily made of hydrogen and helium, with colorful cloud bands and massive storms like the Great Red Spot—a storm larger than Earth that has persisted for centuries. \n\nJupiter has at least 95 moons, including Ganymede, the largest moon in the solar system. \n\nIts faint ring system is made of dust particles, and its gravitational influence shapes the orbits of nearby objects.',
      imageId: 'assets/jupiter.jpg',
    ),

    Planets(
      planet_name: 'Saturn',
      description: 'Saturn is famous for its iconic and visually stunning ring system, made up of ice, rock, and dust particles. \n\nIt is the second-largest planet in the solar system and primarily composed of hydrogen and helium. \n\nSaturn’s low density means it could float in water if a body of water large enough existed. \n\nThe planet has over 80 moons, including Titan, which is larger than Mercury and has a dense atmosphere of nitrogen and methane. \n\nSaturn’s rings and its vast system of moons make it one of the most fascinating planets.',
      imageId: 'assets/saturn.png',
    ),

    Planets(
      planet_name: 'Uranus',
      description: 'Uranus is an ice giant with a pale blue-green color caused by methane in its atmosphere. \n\nThe planet rotates on its side, giving it a unique axial tilt that leads to extreme and unusual seasons. \n\nUranus has a faint ring system and at least 27 moons, with Miranda and Ariel being among the most notable. \n\nIts atmosphere contains icy materials like water, ammonia, and methane, giving it a cold and windy environment. \n\nIt takes Uranus 84 Earth years to complete one orbit around the Sun.',
      imageId: 'assets/uranus.jpg',
    ),

    Planets(
      planet_name: 'Neptune',
      description: 'Neptune, the farthest planet from the Sun, is a deep blue ice giant known for its intense storms and high-speed winds. \n\nIt has the strongest winds in the solar system, reaching speeds of over 2,000 km/h. \n\nNeptune’s atmosphere consists of hydrogen, helium, and methane, with faint, dark rings made of dust and ice. \n\nIt has 14 known moons, including Triton, which orbits in the opposite direction of Neptune’s rotation. \n\nNeptune takes 165 Earth years to complete one orbit around the Sun, making it a distant and mysterious world.',
      imageId: 'assets/neptune.png',
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('List of planets'),
        backgroundColor: Colors.grey[700],
        centerTitle: true,
      ),

      body: ListView.builder(
          itemCount: planets.length,

          itemBuilder: (context,index){
          final planet = planets[index];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
            child: Card(
              color: Colors.grey[850],
              elevation: 20,
              child: ListTile(
                title: Text(
                    planet.planet_name,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/loading');


                  Future.delayed(Duration(seconds: 3), (){
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/About', arguments: planet);
                  });
                },
              ),
            ),
          );
          }),


    );
  }
}
