import 'package:flutter/material.dart';
import 'package:jack_daniels/clipperclass.dart';

import 'homescreen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const  BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpeg"),fit: BoxFit.fill
          )
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
                child: Container()),
           const  Text("OLD NO.7",style: TextStyle(fontFamily: "Kalnia",fontSize: 50,color: Colors.white,fontWeight: FontWeight.w700,shadows: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(4, 4),
                blurRadius:30
              ),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-10, -10),
                  blurRadius: 50
              ),

            ]),),
          const   SizedBox(height: 20,),
           const  Text("Whiskey Filtration \n Takes Place Through\n Charcoal",

              style: TextStyle(
                fontFamily: "Kalnia",
                  fontSize: 30,color: Colors.white,fontWeight: FontWeight.normal,shadows: [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(10, 10),
                  blurRadius: 20
              ),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-10, -10),
                  blurRadius: 20
              ),

            ]),
                textAlign:TextAlign.center
            ),

            Expanded(
              flex: 2,
                child: Container()),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeScreen()));
              },
              child: Stack(
                children: [
                  ClipPath(
                    clipper: BottleCliper(),
                    child: Container(
                      margin:const  EdgeInsets.symmetric(horizontal: 50),
                      height: 150,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(0.2),

                      child: CustomPaint(
                        painter: BottlePaint(),
                      ),

                    ),
                  ),
               const    Positioned.fill(
                    top: 8,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 70,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Open the bottle",style: TextStyle( fontFamily: "Kalnia",fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700,

                          )),
                          Text(">>",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w700,shadows: [
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(2, 2),
                                blurRadius: 10
                            ),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2, -2),
                                blurRadius: 10
                            ),

                          ]

                          ),
                       ),
                          Text(">>",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w700,shadows: [
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(2, 2),
                                blurRadius: 10
                            ),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2, -2),
                                blurRadius: 10
                            ),

                          ]

                          )),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),


          ],
        )
      ),

    );
  }
}
