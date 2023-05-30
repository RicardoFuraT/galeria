import 'package:carousel_app/data/data_receta.dart';
import 'package:carousel_app/models/model_receta.dart';
import 'package:carousel_app/pages/configuracion_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Carousel extends StatefulWidget{
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 216, 216),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        centerTitle: true,
        title: const Text("La Galeria", 
        style: TextStyle(
          fontSize: 35 , 
          fontWeight: FontWeight.bold , 
          color:Color.fromARGB(255, 226, 218, 218),
          ),   
          ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30, ),
          CarouselSlider.builder(
            itemCount: carruselImages.length, 
            itemBuilder: (context, index, realIndex){
              //final carruselImage = carruselImages[index]; variable inesesaria
              return CardImages(carruselImage: carruselImages[index],);
            }, 
          
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 4),
              scrollDirection: Axis.horizontal,
              
              
            ),
          ),
          const SizedBox(
            height: 40,
            
            ),
          ElevatedButton(
              onPressed: () { 
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                },
                style: 
                TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  backgroundColor: const Color.fromARGB(255, 44, 59, 78),
                ), 
                

              child: const Text('Ver Galeria',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                fontStyle: FontStyle.normal
              )
              ),
          ),

          const SizedBox(
            height: 40,
            
            ),
          ElevatedButton(
              onPressed: () { 
                Navigator.push(context, MaterialPageRoute(builder: (context)=> config()));
                },
                style: 
                TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  backgroundColor: const Color.fromARGB(255, 44, 59, 78),
                ), 
                

              child: const Text('Configuracion',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                fontStyle: FontStyle.normal
              )
              ),
          ), 
        ],
      ),
    );
  }
}

/* class Galeria extends StatelessWidget {
  const Galeria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context,'/galeria'),
              child: const Text('Ver Galeria'),
              ),
            const SizedBox(height: 0)
          ],
        ),
      ),
    );
  }
}
 */
class CardImages extends StatelessWidget {
  final Receta carruselImage;
  const CardImages({Key? key, required this.carruselImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: (){},
          child: FadeInImage(placeholder: const AssetImage("assets/anima.gif"), 
          image: AssetImage(carruselImage.image),
          fit: BoxFit.cover,
          ),
        ), 
      ),
    );
  }
} 

