import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:space/core/models/planet_model.dart';

import '../../core/app_colors.dart';
import '../../core/app_styles.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final PlanetModel planet;
  const PlanetDetailsScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -50,
                    left: 0,
                    right: 0,
                      child: Image.asset(
                          "assets/images/back_img.png",
                      ),
                  ),
                  Positioned(
                    top: -10,
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
                        planet.name,
                        style: AppStyles.headTitle,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 45,left: 16),
                      child:GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          child: Icon(Icons.arrow_back,color:Colors.white ,),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140,
                    left: 16,
                    child: Text(
                      planet.title,
                      style: AppStyles.headTitle,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                width: 343,
                height: 343,
                child: ModelViewer(
                    src: planet.model3d,
                  alt: "3D model of ${planet.name}",
                  autoRotate: false,
                  disableZoom: false,
                  cameraControls: true,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 18.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("About",style: AppStyles.headTitle,),
                 Text(
                   planet.about,
                   style: AppStyles.title,
                 ),
                 const SizedBox(height: 12),
                 Column(
                   mainAxisSize: MainAxisSize.min,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(planet.facts[0].distanceFromSun,style: AppStyles.informationTitle,),
                     const SizedBox(height: 12),
                     Text(planet.facts[0].lengthOfDay,style: AppStyles.informationTitle,),
                     const SizedBox(height: 12),
                     Text(planet.facts[0].orbitalPeriod,style: AppStyles.informationTitle,),
                     const SizedBox(height: 12),
                     Text(planet.facts[0].radius,style: AppStyles.informationTitle,),
                     const SizedBox(height: 12),
                     Text(planet.facts[0].mass,style: AppStyles.informationTitle,),
                     const SizedBox(height: 12),
                     Text(planet.facts[0].gravity,style: AppStyles.informationTitle,),
                     const SizedBox(height: 12),
                     Text(planet.facts[0].surfaceArea,style: AppStyles.informationTitle,),
                   ],
                 ),
               ],
             ),
           ),
        
          ],
        ),
      ),
    );
  }
}
// Builder(
// builder: (context){
// final fact = planet.facts[0];
// final facts = [
// fact.distanceFromSun,
// fact.lengthOfDay,
// fact.orbitalPeriod,
// fact.radius,
// fact.mass,
// fact.gravity,
// fact.surfaceArea,
// ];
// return Container(
// color: Colors.red,
// child: ListView.separated(
// shrinkWrap: true,
// physics: const NeverScrollableScrollPhysics(),
// itemBuilder: (context,index){
// return Text(
// facts[index],
// style: AppStyles.informationTitle,
// );
// },
// separatorBuilder: (context,index){
// return SizedBox(height: 18,);
// },
// itemCount: facts.length
// ),
// );
// }
// ),