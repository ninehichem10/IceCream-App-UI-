import 'package:flutter/material.dart';

import 'Model/MyCartmodel.dart';


class Mycart extends StatefulWidget {
  @override
  _MycartState createState() => _MycartState();
}

List<Mycartitem> items = [
  Mycartitem(
    title:'Green Flavour',
    price:"\$18.500",
    picture:"lib/assets/GreenFlavour.jpeg",
    num:0,

  ),

  Mycartitem(
    title:'Chocolate Flavour',
    price:"\$18.500",
    picture:"lib/assets/ChocolateFlavour.jpg",
    num:0,

  ),

  Mycartitem(
    title:'Strawberry Flavour',
    price:"\$18.500",
    picture:"lib/assets/StrawberryFlavour.jpg",
    num:0,

  ),
];

class _MycartState extends State<Mycart> {

  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('My Cart',style: TextStyle(
                      color: Color.fromRGBO(64, 83, 113, 1),
                      fontWeight: FontWeight.bold,fontSize: 30,
                    ),),

                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        minimumSize: Size(140,40),
                        primary: Colors.transparent,
                        elevation: 0
                      ),
                        onPressed: (){},
                      icon: Icon(Icons.add_box,size: 30,
                          color: Color.fromRGBO(223, 156, 153, 1)),
                      label: Text('Add items',style: TextStyle(
                          color: Color.fromRGBO(223, 156, 153, 1),fontSize: 16),
                        overflow: TextOverflow.fade,)

                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //___________________________mycarte items
              Container(
                height: MediaQuery.of(context).size.height*0.6,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, i) => Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    //color: Colors.blue,

                    height: MediaQuery.of(context).size.height*0.20,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 35,
                          left: 20,
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.09,
                            width: MediaQuery.of(context).size.width*0.22,

                            //color: Colors.red,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                items[i].picture,fit: BoxFit.cover,),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 35,
                          left: 105,
                          child: Container(


                            //color: Colors.blue,
                            child: Column(
                             //mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: FittedBox(
                                    child: Text(items[i].title,style: TextStyle(
                                      color: Color.fromRGBO(64, 83, 113, 1),
                                      fontWeight: FontWeight.bold,fontSize: 18,
                                    ),),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: FittedBox(
                                    child: Text(items[i].price,style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,fontSize: 16,
                                    ),),
                                  ),
                                ),

                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.transparent,
                                        minimumSize: Size(140,40),
                                        primary: Colors.transparent,
                                        elevation: 0
                                    ),
                                    onPressed: (){},
                                    icon: Icon(Icons.check,size: 20,
                                        color: Color.fromRGBO(228, 171, 80, 1)),
                                    label: FittedBox(
                                      child: Text('Free delivery',style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.fade,),
                                    )

                                ),

                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          right: 20,
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.05,
                            width: MediaQuery.of(context).size.width*0.1,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:BorderRadius.circular(60.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      //offset: Offset(1,1),
                                      blurRadius: 5,
                                      spreadRadius: 0.1,
                                  )
                                ]
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60.0)
                                ),
                                //minimumSize: Size(10,40),
                                padding: EdgeInsets.all(8),
                              ),
                              onPressed: (){},
                              child: Icon(
                                Icons.delete_forever_outlined,
                                color: Color.fromRGBO(236, 195, 143, 1),
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          top: 130,
                          right: 10,
                          child: Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height*0.05,
                                width: MediaQuery.of(context).size.width*0.3,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(240, 239, 239, 1),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      flex: 3,
                                      child: ElevatedButton(
                                        onPressed: (){

                                          setState(() {
                                            if(items[i].num <= 0){
                                              items[i].num = 0;
                                            }else{
                                              items[i].num-=1;
                                            }
                                          });


                                        },
                                        child: Text('-',style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,fontSize: 20,
                                        ),),
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: Size(40,40),
                                          primary: Color.fromRGBO(220, 222, 223, 1),
                                        ),),

                                    ),

                                    Flexible(
                                      flex: 3,
                                      child: FittedBox(
                                        child: Text('${items[i].num}',style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,fontSize: 15,
                                        ),),
                                      ),

                                    ),

                                    Flexible(
                                      flex: 3,
                                      child: ElevatedButton(
                                        onPressed: (){
                                          setState(() {
                                            items[i].num+=1;
                                          });
                                        },
                                        child: Text('+',style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,fontSize: 20,
                                        ),),
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: Size(40,40),
                                          primary: Color.fromRGBO(227, 174, 173, 1),
                                        ),),
                                    ),


                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    FittedBox(
                      child: Text('Total Price',style: TextStyle(
                        color: Color.fromRGBO(64, 83, 113, 1),
                        fontWeight: FontWeight.bold,fontSize: 28,
                      ),),
                    ),

                    FittedBox(
                      child: Text('\$45.00',style: TextStyle(
                        color: Color.fromRGBO(227, 174, 173, 1),
                        fontWeight: FontWeight.bold,fontSize: 28,
                      ),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  primary: Color.fromRGBO(197, 126, 84, 1),
                  minimumSize: Size(
                      MediaQuery.of(context).size.width*0.9,
                      60,
                  ),
                ),
                onPressed: (){},
                child: FittedBox(
                  child: Text('Check out',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,fontSize: 18,
                  ),),
                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
