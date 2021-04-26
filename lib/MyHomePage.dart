import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:icecream/IceInfo.dart';
import 'Model/Icemodel.dart';


List<Iceitem> items = [
  Iceitem(
    title:'Chocolate Flavour',
    price:"\$18.500",
    picture:"lib/assets/ChocolateFlavour.png",
    onTap: (){},
      ),

  Iceitem(
    title:'Sherbet Flavour',
    price:"\$18.500",
    picture:"lib/assets/SherbetFlavour.png",
    onTap: (){},
  ),
];


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height*0.20,
        title: Column(
          children: [
            SafeArea(
              child: ListTile(
                title: Text('Hi,Joshua',style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25
                ),),
                subtitle: Text('What flavour are you looking for?',style: TextStyle(
                    color: Colors.grey,fontWeight: FontWeight.bold
                ),),
                trailing: IconButton(
                    icon: Icon(
                      Icons.account_circle,
                      size: 30,
                      color: Colors.brown,
                    ),
                    onPressed: (){}
                ),
              ),
            ),
            //_____________Search bar_____________________________//
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height*0.05,
                      width: MediaQuery.of(context).size.width*0.72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Color.fromRGBO(243, 232, 233,1),),
                      child: Row(
                        children: [
                          LayoutBuilder(builder: (
                              BuildContext context, BoxConstraints constraints) {

                            return Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.6,
                              child: TextFormField(
                                decoration: new InputDecoration(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Icon(Icons.search,color: Colors.grey),
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "Search by flavour",hintStyle: TextStyle(
                                    color: Colors.grey,fontWeight: FontWeight.bold

                                ), ),

                              ),
                            );
                          },

                          ),
                          Expanded(child: IconButton(
                              icon: Icon(
                                Icons.mic_outlined,
                                color: Colors.black54,
                              ),
                              onPressed: () {}))
                        ],
                      )
                  ),
                  SizedBox(
                    width: 12,
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height*0.05,
                    width: MediaQuery.of(context).size.width*0.10,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color:Color.fromRGBO(243, 232, 233,1),),
                    child: IconButton(icon: Icon(
                      Icons.settings_input_composite_outlined,color: Colors.grey,), onPressed: (){}),
                  ),
                ],
              ),
            ),
          ],
        ),


      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 30,right: 30),
          child: Column(
            children: [
              //_____________TOP flavour_____________________________//
              Container(
                alignment: Alignment.topLeft,
                child:  Text('Top flavour',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),),
              ),
              SizedBox(
                height: 10,
              ),


              //_____________Vanilla Container_____________________________//
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => IceInfo(),));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: Colors.pinkAccent,
                  ),
                  child: Stack(
                    children: [
                      //_____________ Image _____________________________//
                      ClipRRect(
                        child: Image.asset("lib/assets/Vanilla.jpg",
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      Positioned(
                        top: 0,
                        left: 280,
                        right: 0,
                        bottom: 100,
                        child: IconButton(
                          icon: Icon(Icons.add_box,
                          ),
                          onPressed: (){},color:Color.fromRGBO(226, 170, 170,1),),
                      ),


                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 30),
                            child: Text('Vanilla Flavour',style: TextStyle(
                                color: Colors.black87,fontWeight: FontWeight.w500,
                                fontSize: 25),),
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Free delivery',style: TextStyle(
                                color: Colors.grey,fontWeight: FontWeight.bold
                                ),),
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('\$16.500',style: TextStyle(
                                color:Colors.pinkAccent.withOpacity(0.2),fontWeight: FontWeight.bold
                            ),),
                          ),


                        ],
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //_____________Popular flavours _____________________________//
              Container(
                height: MediaQuery.of(context).size.height*0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular flavours',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),),

                    Text('See all',style: TextStyle(
                        color:Color.fromRGBO(223, 156, 153,1),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),),

                  ],
                ),
              ),

              //_____________ Containers _____________________________//

              Container(
                height: MediaQuery.of(context).size.height*0.45,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Stack(
                        children: [
                         Align(
                           alignment: Alignment.center,
                           child: Container(
                             width: MediaQuery.of(context).size.width*0.38,
                             height: MediaQuery.of(context).size.height*0.25,
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Color.fromRGBO(243, 232, 233, 1),
                             ),
                           ),
                         ),
                          Positioned(
                             top: 13,
                              child: Image.asset(items[index].picture,
                                height: MediaQuery.of(context).size.height*0.33,
                                width: MediaQuery.of(context).size.width*0.37,
                              )),


                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: MediaQuery.of(context).size.height*0.1,
                                width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight:Radius.circular(10),
                                  ),
                                  color: Colors.transparent,


                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          '${items[index].title}',
                                          style: TextStyle(
                                              fontSize: 18,fontWeight: FontWeight.w600
                                          ),),
                                      ),
                                      FittedBox(
                                        child: Text(
                                          '${items[index].price}',
                                          style: TextStyle(
                                            fontSize: 18,fontWeight: FontWeight.w600,
                                            color:Colors.pinkAccent.withOpacity(0.2),
                                          ),overflow: TextOverflow.fade,),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ),

                        ],
                      )
                    )
                ),
              )


            ],
          ),
        ),
      ),

    );
  }
}
