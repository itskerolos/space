import 'package:flutter/material.dart';
import 'package:space/core/app_colors.dart';
import 'package:space/core/app_routes.dart';
import 'package:space/core/app_styles.dart';
import 'package:space/core/models/planet_fact_model.dart';
import 'package:space/core/models/planet_model.dart';
import 'package:space/core/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex = 0;
  List<PlanetModel> planets = [
  PlanetModel(
    name: "Sun",
    image: "assets/images/sun.png",
    buttonText: "Sun",
    about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    model3d: "assets/models/sun.glb",
    title: "The Sun: Our Solar System's Star",
    facts: [
      PlanetFactModel(
          distanceFromSun: "Distance From Sun(Km) : 0",
          lengthOfDay: "List of Day (hours) : 0",
          orbitalPeriod: "Orbital Period(Earth of years) : 0",
          radius: "Radius (km) : 695700",
          mass: "Mass (kg) : 1.989 × 10³⁰",
          gravity: "Gravity (m/s²) : 274",
          surfaceArea: "Surface Area (km²) : 6.09 × 10¹²",
      ),
    ],
  ),
  PlanetModel(
    name: "Mercury",
    image: "assets/images/mercury.png",
    buttonText: "Mercury",
    about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    model3d: "assets/models/mercury.glb",
    title: "Mercury: The Closest Planet",
    facts: [
      PlanetFactModel(
        distanceFromSun: "Distance From Sun(Km) : 57909227",
        lengthOfDay: "List of Day (hours) : 1407.6",
        orbitalPeriod: "Orbital Period(Earth of years) : 0.24",
        radius: "Radius (km) : 2439.7",
        mass: "Mass (kg) : 3.301 × 10²³",
        gravity: "Gravity (m/s²) : 3.7",
        surfaceArea: "Surface Area (km²) : 7.48 × 10⁷",
      ),
    ],
  ),
  PlanetModel(
    name: "Venus",
    image: "assets/images/venus.png",
    buttonText: "Venus",
    about: "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
    title: "Venus: Earth's Toxic Twin",
    model3d: "assets/models/venus.glb",
    facts: [
      PlanetFactModel(
        distanceFromSun: "Distance From Sun(Km) : 108209072",
        lengthOfDay: "List of Day (hours) : 5832.2",
        orbitalPeriod: "Orbital Period(Earth of years) : 0.62",
        radius: "Radius (km) : 6051.8",
        mass: "Mass (kg) : 4.867 × 10²⁴",
        gravity: "Gravity (m/s²) : 8.87",
        surfaceArea: "Surface Area (km²) : 4.60 × 10⁸",
      ),
    ],
  ),
  PlanetModel(
      name: "Earth",
      image: "assets/images/earth.png",
      buttonText: "Earth",
    title: "Earth: Our Blue Marble",
    model3d:"assets/models/earth.glb" ,
    about: "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
    facts: [
      PlanetFactModel(
        distanceFromSun: "Distance From Sun(Km) : 149598026",
        lengthOfDay: "List of Day (hours) : 23.93",
        orbitalPeriod: "Orbital Period(Earth of years) : 1",
        radius: "Radius (km) : 6371",
        mass: "Mass (kg) : 5.972 × 10²⁴",
        gravity: "Gravity (m/s²) : 9.81",
        surfaceArea: "Surface Area (km²) : 5.10 × 10⁸",
      ),
    ]
  ),
  PlanetModel(
    name: "Mars",
    image: "assets/images/mars.png",
    buttonText: "Mars",
    title: "Mars: The Red Planet",
    model3d: "assets/models/mars.glb",
    about: "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
    facts: [
      PlanetFactModel(
        distanceFromSun: "Distance From Sun(Km) : 227943824",
        lengthOfDay: "List of Day (hours) : 24.62",
        orbitalPeriod: "Orbital Period(Earth of years) : 1.88",
        radius: "Radius (km) : 3389.5",
        mass: "Mass (kg) : 6.39 × 10²³",
        gravity: "Gravity (m/s²) : 3.71",
        surfaceArea: "Surface Area (km²) : 1.45 × 10⁸",
      ),
    ],
  ),
  PlanetModel(
    name: "Jupiter",
    image: "assets/images/jupiter.png",
    buttonText: "Jupiter",
    title: "Jupiter: The Gas Giant",
    model3d:"assets/models/jupiter.glb" ,
    about:"Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life." ,
    facts: [
      PlanetFactModel(
        distanceFromSun: "Distance From Sun(Km) : 778547669",
        lengthOfDay: "List of Day (hours) : 9.92",
        orbitalPeriod: "Orbital Period(Earth of years) : 11.86",
        radius: "Radius (km) : 69911",
        mass: "Mass (kg) : 1.898 × 10²⁷",
        gravity: "Gravity (m/s²) : 24.79",
        surfaceArea: "Surface Area (km²) : 6.21 × 10¹⁵",
      ),
    ],
  ),
  PlanetModel(
    name: "Saturn",
    image: "assets/images/saturn.png",
    buttonText: "Saturn",
    title: "Saturn: The Ringed Planet",
    model3d: "assets/models/saturn.glb",
    about: "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
    facts: [
      PlanetFactModel(
        distanceFromSun: "Distance From Sun(Km) : 1426666422",
        lengthOfDay: "List of Day (hours) : 10.66",
        orbitalPeriod: "Orbital Period(Earth of years) : 29.46",
        radius: "Radius (km) : 58232",
        mass: "Mass (kg) : 5.683 × 10²⁶",
        gravity: "Gravity (m/s²) : 10.44",
        surfaceArea: "Surface Area (km²) : 4.27 × 10¹⁵",
      ),
    ],
  ),
  PlanetModel(
    name: "Uranus",
    image: "assets/images/uranus.png",
    buttonText: "Uranus",
    title: "Uranus: The Tilted Planet",
    model3d: "assets/models/uranus.glb",
    about: "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
    facts: [
      PlanetFactModel(
        distanceFromSun: "Distance From Sun(Km) : 2870990000",
        lengthOfDay: "List of Day (hours) : 17.24",
        orbitalPeriod: "Orbital Period(Earth of years) : 84.01",
        radius: "Radius (km) : 25362",
        mass: "Mass (kg) : 8.681 × 10²⁵",
        gravity: "Gravity (m/s²) : 8.69",
        surfaceArea: "Surface Area (km²) : 8.1 × 10¹⁵",
      ),
    ],
  ),
  PlanetModel(
    name: "Neptune",
    image: "assets/images/neptune.png",
    buttonText: "Neptune",
    title: "Neptune: The Distant World",
    model3d: "assets/models/neptune.glb",
    about: "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
    facts: [
      PlanetFactModel(
        distanceFromSun: "Distance From Sun(Km) : 4498252900",
        lengthOfDay: "List of Day (hours) : 16.11",
        orbitalPeriod: "Orbital Period(Earth of years) : 164.8",
        radius: "Radius (km) : 24622",
        mass: "Mass (kg) : 1.024 × 10²⁶",
        gravity: "Gravity (m/s²) : 11.15",
        surfaceArea: "Surface Area (km²) : 7.65 × 10¹⁵",
      ),
    ],
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/back_img.png"),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                  child: Image.asset(
                      "assets/images/Grediant.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Text(
                    "Explore",
                    style: AppStyles.headTitle,
                  ),
                ),
              ),
              Positioned(
                top: 180,
                  left: 16,
                  child: Text(
                    "Which planet\nwould you like to explore?",
                    style: AppStyles.headTitle,
                  ),
              ),
            ],
          ),
          SizedBox(
            width: 342,
              height: 339,
              child: Image.asset(
                  planets[currentIndex].image
              ),
          ),
          SizedBox(height: 38,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap:(){
                    setState(() {
                      currentIndex -- ;
                      if (currentIndex < 0) {
                        currentIndex = planets.length - 1;
                      }
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.arrow_back,color:Colors.white ,),
                  ),
                ),
                Text(planets[currentIndex].name,style: AppStyles.headTitle,),
                 GestureDetector(
                    onTap: (){
                      setState(() {
                        currentIndex ++;
                        if(currentIndex == planets.length){
                          currentIndex = 0;
                        }
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(Icons.arrow_forward,color:Colors.white ,),
                    ),
                  ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 22,
            ),
            child: CustomButton(
                buttonText: "Explore ${planets[currentIndex].buttonText}",
                onPressed: (){
                  Navigator.pushNamed(context, AppRoutes.planetDetails,arguments: planets[currentIndex]);
                },
            ),
          ),
        ],
      ),
    );
  }
}
