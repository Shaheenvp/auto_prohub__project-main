import 'package:autoprohub/user_module/Accesseroris/bike_acc.dart';
import 'package:autoprohub/user_module/Accesseroris/car_acc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../navbar.dart';
import '../home/feedback.dart';
import '../login/start.dart';
import '../profile/editprofile.dart';
import '../services/services.dart';
import 'ad.dart';
import 'logo.dart';


class Accesserois extends StatefulWidget {
  const Accesserois({super.key});

  @override
  State<Accesserois> createState() => _AccesseroisState();
}

class _AccesseroisState extends State<Accesserois> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child:   AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('AUTO PRO HUB',style: TextStyle(color: Colors.black54,fontSize: 25),),
            ),
            actions: [

            ],

          ),
        ),
        endDrawer: Drawer(
          width: 280,
          shadowColor: Colors.black,
          child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/home/s.png'),
                            radius: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Text(' Mohammed Shaheen VP', style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>editprofile()));
                        }, child: Text('Edit Profile'))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>nav()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text('HOME'),

                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => services()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.settings_suggest_outlined),
                      title: Text('SERVICES'),

                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    // onTap: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => complaints()));
                    // },
                    child: ListTile(
                      leading: Icon(Icons.shopping_cart),
                      title: Text('MY ORDERS'),


                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>feedback()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.comment),
                      title: Text('FEEDBACKS'),

                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  // InkWell(
                  //   // onTap: () {
                  //   //   Navigator.push(
                  //   //       context, MaterialPageRoute(builder: (context) => gt4()));
                  //   // },
                  //   child: ListTile(
                  //     leading: Icon(Icons.group),
                  //     title: Text('Group created'),
                  //
                  //   ),
                  // ),
                  // Divider(
                  //   thickness: 2,
                  // ),
                  // InkWell(
                  //   // onTap: () {
                  //   //   Navigator.push(
                  //   //       context, MaterialPageRoute(builder: (context) => c4()));
                  //   // },
                  //   child: ListTile(
                  //     leading: Icon(Icons.local_offer_outlined),
                  //     title: Text('Offer ride'),
                  //
                  //   ),
                  // ),
                  // Divider(
                  //   thickness: 2,
                  // ),
                  InkWell(
                    // onTap: () {
                    //   Navigator.push(
                    //       context, MaterialPageRoute(builder: (context) => help()));
                    // },
                    child: ListTile(
                      leading: Icon(Icons.help_outline),
                      title: Text('Help'),

                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: Text('Are you sure you want to logout!'),
                          actions: [
                            TextButton(onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => nav()));
                            }, child: Text('No')),
                            TextButton(onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => start()));
                            }, child: Text('Yes')),

                          ],
                        );
                      });
                    },
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('logout'),

                    ),
                  ),

                ],
              )

            // child: Drawer(
            //   width: 250,
            //   backgroundColor: Colors.blueGrey,
            //   child: Container(
            //     height: MediaQuery.of(context).size.height,
            //     child: Column(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: CircleAvatar(
            //             radius: 55,
            //             backgroundColor: Colors.white,
            //             child: ClipOval(child: Image.asset('assets/home/s.png',fit: BoxFit.contain,)),
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Text('Mohammed Shaheen VP',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
            //         ),
            //         Text('Edit Profile',style: TextStyle(color: Colors.blueAccent),),
            //         Divider(
            //           thickness: 2,
            //         ),
            //
            //       ],
            //     ),
            //
            //
            //   ),
            // ),
          ),
        ),

        body: Container(
        height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    // Stack(
    // children: [
    // Container(
    // height: 220,
    // decoration: BoxDecoration(
    // image: DecorationImage(image: AssetImage('assets/acc/acc.jpg'),fit: BoxFit.contain)
    // ),
    // ),
    //
    // Padding(
    // padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
    // child: TextField(
    // decoration: InputDecoration(
    //   filled: true,
    // fillColor: Colors.white60,
    // enabledBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(30),
    //
    // ),
    // focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    // prefixIcon: Icon(CupertinoIcons.search),
    // hintText: 'Search here'
    // ),
    // ),
    // )
    // ],
    // ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Text('Select your vehicle',style: TextStyle(fontSize: 18),),
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     ElevatedButton(
      //         style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
      //         onPressed: (){}, child: Column(
      //       children: [
      //         Container(
      //           height: 70,
      //             child: Image(image: AssetImage('assets/acc/car.jpg'),fit: BoxFit.cover,)),
      //         Text('Car',style: TextStyle(color: Colors.black),)
      //       ],
      //     )),
      //     ElevatedButton(
      //         style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
      //         onPressed: (){}, child: Column(
      //       children: [
      //         Container(
      //             height: 70,
      //             child: Image(image: AssetImage('assets/acc/bike.png'),fit: BoxFit.cover,)),
      //         Text('Bike',style: TextStyle(color: Colors.black),)
      //       ],
      //     ))
      //
      //   ],
      // ),
      // SizedBox(height: 20,),
      // Center(
      //     child:
      //     SizedBox(
      //       width: 300,
      //         height: 50,
      //         child: ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //               shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(15))
      //             ),
      //             onPressed: (){}, child: Text('Search')))),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          child: ad(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Shop by Categories',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Bikes Accessories',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>bike_ac(type: 'Bike',)));
            }, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
          ],
        ),
      ),
      Container(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // physics: NeverScrollableScrollPhysics(),
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 2, // Number of columns in the grid
          // ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>bike_ac(type: 'Bike',)));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Colors.black26
                      )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 200,
                          child: Image(image: AssetImage('assets/acc/bike.png'),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                            child: Text('Bike Accessories',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                            child: Text(' Upto ${index+10}% Off',style: TextStyle(color: Colors.green,fontSize: 28,fontWeight: FontWeight.bold),),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                          //   child: Text('\$${index+1}0',style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
                          // )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Car Accessories',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>car(type: 'Car',)));
            }, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
          ],
        ),
      ),
      Container(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // physics: NeverScrollableScrollPhysics(),
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 2, // Number of columns in the grid
          // ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>car(type: 'Car',)));

              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: Colors.black26
                      )
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 200,
                          child: Image(image: AssetImage('assets/acc/car.jpg'),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                            child: Text('Car Accessories',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                            child: Text(' Upto ${index+10}% Off',style: TextStyle(color: Colors.green,fontSize: 28,fontWeight: FontWeight.bold),),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                          //   child: Text('\$${index+1}0',style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),),
                          // )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      Container(
        height: 250,
        color: Colors.white,
      child: Logo(),),

    ]
    )
    )
        )
    );

  }
}
