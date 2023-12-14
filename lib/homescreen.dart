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
  List<String>filterList=["assets/jd1.png","assets/jd2.png","assets/jd3.png"];
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size.height;
    return Scaffold(
/// safe area
      body: SafeArea(
        child:CustomScrollView(
          slivers: [
            SliverFillRemaining(
                hasScrollBody: false,
                child:  Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                              /// using stack to put bottle at right place
                              children: [
                              /// fill is used to cover entire space
                              /// and the bottle image is at background
                              Positioned.fill(
                              left: 100,
                  top: 50,

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
                  Center(
                    child: SizedBox(
                        height: 80,
                        width: 250,
                        child: Image.asset("assets/logo.png")),
                  ),
                  const   SizedBox(height: 20,),
                  const    Text("The temperature of\nwhiskey before use\nshould be 18-21",style: TextStyle( fontFamily: "Kalnia",fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                  const   SizedBox(height: 20,),
                  /// creating the custom column to display the variaty
                  Column(
                    children: [

                      for(int i=0;i<filterList.length;i++)...[ GestureDetector(
                        /// as index change the image is also change
                        onTap: (){
                          setState(() {
                            index=i;
                          });

                        },
                        child: Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color:index==i?const  Color(0xffcfba8f)
                                      :Colors.transparent,width: 3
                              )
                          ),
                          child: Image.asset(filterList[i], fit: BoxFit.fitHeight,),
                        ),
                      ),]


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


                                        height: 40,
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
                                padding:const  EdgeInsets.only(bottom: 25),
                                child: Text("$count",style:const TextStyle(fontFamily: "Kalnia", fontSize: 35,fontWeight: FontWeight.bold),),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(

                        height: 45,
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
                        child:const Text("Buy",style: TextStyle(fontFamily: "Kalnia", fontWeight: FontWeight.bold,fontSize: 24),),


                      ),

                    ],
                  ),


                                ],
                              ),

                            ],
                          ),
                ),
            )
          ],


        )
      ),
    );
  }
}
