import 'package:drop_shadow/drop_shadow.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';

import 'clipperclass.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index =1;
  int count =0;
  void increse(){
    setState(() {
      count++;
    });
  }
  void decreas(){
    if (count<=0){

    }else{
      setState(() {
        count--;
      });
    }
  }

  List<String>images=["assets/bottle2.png","assets/bottle1.png","assets/bottle3.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
/// safe area
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(10),
          child:  Stack(
            /// using stack to put bottle at right place
            children: [
              /// fill is used to cover entire space
              /// and the bottle image is at background
              Positioned.fill(
               left: 100,
                  top: 10,

                  child: DropShadowImage(
                    blurRadius: 22,
                    offset: const Offset(20,20),

                      image: Image.asset(images[index]),
                  )),
              /// here is the rest  of the code
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// row act as appbar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset:const  Offset(5,5),
                                  blurRadius: 20
                              ),
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset:const  Offset(-5,-5),
                                  blurRadius: 20
                              )
                            ]

                        ),
                        child:const  Icon(Icons.grid_view),


                      ),
                      Container(

                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset:const  Offset(5,5),
                                  blurRadius: 20
                              ),
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset:const  Offset(-5,-5),
                                  blurRadius: 20
                              )
                            ]

                        ),
                        child:const  Icon(Icons.shopping_cart_outlined),


                      ),

                    ],
                  ),

                  /// using the brand logo
                  Image.asset("assets/logo.png"),
                const   SizedBox(height: 20,),
               const    Text("The temperature of\nwhiskey before use\nshould be 18-21",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                  const   SizedBox(height: 20,),
                  /// creating the custom column to display the variaty
                  Column(
                    children: [
                      GestureDetector(
                        /// as index change the image is also change
                        onTap: (){
                          setState(() {
                            index=0;
                          });

                        },
                        child: Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color:index==0?const  Color(0xffcfba8f)
                                  :Colors.transparent,width: 3
                            )
                          ),
                          child: Image.asset("assets/jd1.png",fit: BoxFit.fill,),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            index=1;
                          });
                        },
                        child: Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color:index==1?const  Color(0xffcfba8f)
                                      :Colors.transparent,width: 3



                              )
                          ),
                          child: Image.asset("assets/jd2.png",),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            index=2;
                          });
                        },
                        child: Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color:index==2?const  Color(0xffcfba8f)
                                      :Colors.transparent,width: 3
                              )
                          ),
                          child: Image.asset("assets/jd3.png",fit: BoxFit.fill,),
                        ),
                      )
                    ],
                  ),
                const   Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// using stack to display count in better way
                      Stack(
                        children: [
                          Column(
                            children: [
                             const  SizedBox(height: 10,),

                              /// this package is used to add shadow to any widget
                              DropShadow(
                                color: Colors.grey,
                                borderRadius: 150,

                                child: Stack(
                                  children: [
                                    ClipPath(

                                      /// already created the custom shape button
                                      clipper: ButtonClipper(),
                                      child: Container(


                                        height: 50,
                                        width: 150,
                                        color: Colors.white,





                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                                onTap: (){
                                                  decreas();
                                                  },

                                                child: const Icon(Icons.remove)),

                                            GestureDetector(
                                                onTap: (){
                                                  increse();

                                                },

                                                child: const Icon(Icons.add)),

                                          ],

                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                           Positioned.fill(
                            child: Center(
                              child:Padding(
                                padding:const  EdgeInsets.only(bottom: 15),
                                child: Text("$count",style:const TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(

                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),

                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset:const  Offset(5,5),
                                  blurRadius: 20
                              ),
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset:const  Offset(-5,-5),
                                  blurRadius: 20
                              )
                            ]

                        ),
                        alignment: Alignment.center,
                        child:const Text("Buy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),


                      ),

                    ],
                  ),


                ],
              ),

            ],
          ),
        )
      ),
    );
  }
}
