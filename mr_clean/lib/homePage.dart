import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  var services = [
    "Sofa Cleaning Services",
    "Carpet Cleaning Services",
    "Deep Cleaning Services",
    "Office Cleaning Services",
    "Window Cleaning Services",
    "Post Construction Cleaning Services",
    "Wall Painting Services",
    "Move In/Out Cleaning Services"
  ];

  var images = [
    "images/broom.png",
    "images/adornment.png",
    "images/vacuum.png",
    "images/offices.png",
    "images/window.png",
    "images/house.png",
    "images/paint-roller.png",
    "images/cleaner.png",
  ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
          itemCount: services.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height/2.6)
          ),
          itemBuilder: (BuildContext context,int index){
            return Card(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 24,
                  ),
                  Image.asset(images[index],height: 50,width: 50,),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(services[index],style: TextStyle(fontSize: 14,fontFamily: "Montserrat",height: 1.2,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                  )
                ],
              ),
            );
          }
      ),
    );
  }

}