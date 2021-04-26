import 'package:flutter/material.dart';



class IceInfo extends StatefulWidget {

  @override
  _IceInfoState createState() => _IceInfoState();
}

class _IceInfoState extends State<IceInfo> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //backgroundColor: Colors.transparent,
     body: SingleChildScrollView(
       child: Container(
         height: MediaQuery.of(context).size.height,
         child: Stack(
           children: [
             Image.asset("lib/assets/Vanilla.jpg",
                 fit: BoxFit.cover,
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height*0.7,
                 //height:MediaQuery.of(context).size.height,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 50,left: 30),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                         primary: Colors.grey.withOpacity(0.5),
                         elevation: 0,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(60.0)
                         ),
                         minimumSize: Size(10,40),
                         padding: EdgeInsets.all(8)
                     ),
                     onPressed: (){
                       Navigator.pop(context);
                     },
                     child: Icon(
                         Icons.arrow_back,
                         color: Colors.brown.withOpacity(0.5)),
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(top: 50,right: 30),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                       elevation: 0,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(60.0)
                       ),
                       minimumSize: Size(10,40),
                       padding: EdgeInsets.all(8),
                     ),
                     onPressed: (){},
                     child: Icon(
                       Icons.settings,color: Color.fromRGBO(236, 195, 143, 1),),
                   ),
                 ),
               ],
               /*
             Icon(
                           Icons.settings,color: Color.fromRGBO(236, 195, 143, 1),)
              */
             ),
             Positioned(
               top:480.0,
               bottom: 0,
               //bottom: 100,
               child: Container(
                 decoration: BoxDecoration(
                     color: Colors.white,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(60),
                   )
                 ),
                 height: MediaQuery.of(context).size.height*0.5,
                 width: MediaQuery.of(context).size.width,
                 child: Padding(
                   padding: const EdgeInsets.only(top: 30,left: 20,right: 30),
                   child: Column(
                     children: [

                       //____________Vanilla flavour filled _____________________
                       Text('Vanilla flavour filled with candy extra toppings',style: TextStyle(
                           color: Color.fromRGBO(202, 157, 134, 1),
                           fontWeight: FontWeight.bold,
                           fontSize: 30),),
                       SizedBox(
                         height: 10,
                       ),

                       //____________Text  _____________________
                       Align(
                         alignment: Alignment.topLeft,
                         child: Text('vanilla flavour,which is carefully extracted from the best \b'
                             'fruits which bursts with a mind blowing flavour',style: TextStyle(
                             color: Colors.black.withOpacity(0.3),
                             fontWeight: FontWeight.bold,fontSize: 17
                             ),),
                       ),
                       SizedBox(
                         height: 15,
                       ),

                       //____________Free delevry  _____________________
                       Align(
                         alignment: Alignment.topLeft,
                         child: Text('Free delivery',style: TextStyle(
                             color: Colors.black.withOpacity(0.3),
                             fontWeight: FontWeight.bold,fontSize: 19,fontStyle: FontStyle.italic
                         ),),
                       ),
                       SizedBox(
                         height: 15,
                       ),

                      //____________ Prices_____________________
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('\$18.500',style: TextStyle(
                               color: Color.fromRGBO(226, 170, 170, 1),
                               fontWeight: FontWeight.bold,fontSize: 25,
                           ),),

                           Padding(
                             padding: const EdgeInsets.only(right: 10),
                             child: Text('1Kg',style: TextStyle(
                               color: Color.fromRGBO(226, 170, 170, 1),
                               fontWeight: FontWeight.bold,fontSize: 25,
                             ),),
                           ),
                         ],
                       ),
                       SizedBox(
                         height: 20,
                       ),


                       Row(
                         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             height: MediaQuery.of(context).size.height*0.06,
                             width: MediaQuery.of(context).size.width*0.3,
                             decoration: BoxDecoration(
                               color: Color.fromRGBO(226, 170, 170, 1),
                               borderRadius: BorderRadius.circular(10)
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 InkWell(
                                   child: Container(
                                    // color: Colors.red,
                                     height: MediaQuery.of(context).size.height*0.06,
                                     width: MediaQuery.of(context).size.width*0.04,
                                     child: Center(
                                         child: Text('-',style: TextStyle(
                                           color: Colors.white,
                                           fontWeight: FontWeight.bold,fontSize: 18,
                                         ),)),
                                   ),
                                   onTap: (){
                                     setState(() {
                                       if(num <= 0){
                                         num = 0;
                                       }else{
                                           num-=1;
                                       }
                                     });

                                   },
                                 ),

                                 FittedBox(
                                   child: Text('${num}',style: TextStyle(
                                     color: Colors.white,
                                     fontWeight: FontWeight.bold,fontSize: 18,
                                   ),),
                                 ),

                                 InkWell(
                                   child: Container(
                                     //color: Colors.red,
                                     height: MediaQuery.of(context).size.height*0.06,
                                     width: MediaQuery.of(context).size.width*0.04,
                                     child: Center(
                                         child: Text('+',style: TextStyle(
                                           color: Colors.white,
                                           fontWeight: FontWeight.bold,fontSize: 18,
                                         ),)),
                                   ),
                                   onTap: (){
                                     setState(() {
                                       num+=1;
                                     });
                                   },
                                 ),
                               ],
                             ),
                           ),
                           SizedBox(
                             width: 10,
                           ),
                           Expanded(
                             child: ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                                 primary: Color.fromRGBO(197, 126, 84, 1),
                                 minimumSize: Size(
                                     MediaQuery.of(context).size.width*0.5,
                                   MediaQuery.of(context).size.height*0.06,),
                               ),
                               onPressed: (){},
                               child: Text('Add to cart',style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,fontSize: 18,
                               ),),

                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),

               ),
             ),

           ],
         ),
       ),
     ),
    );
  }
}
/*
ElevatedButton(

         style: ElevatedButton.styleFrom(

           primary: Colors.grey,
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(50.0)
           ),
         ),
         onPressed: (){},
         child: null,

       )
 */