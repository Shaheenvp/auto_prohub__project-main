import 'package:autoprohub/Provider%20module/Add%20accessories/add_accessories.dart';
import 'package:autoprohub/Provider%20module/Add%20vehicles/rent/rent%20vehicle.dart';
import 'package:autoprohub/Provider%20module/Add%20vehicles/used/add%20car.dart';
import 'package:autoprohub/Provider%20module/my%20accessories/my%20accssories.dart';
import 'package:autoprohub/Provider%20module/my%20bike/my%20bike.dart';
import 'package:autoprohub/Provider%20module/my%20cars/my%20cars.dart';
import 'package:autoprohub/Provider%20module/my%20order/my%20order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../user_module/home/feedback.dart';
import '../../user_module/home/feedbackmodel.dart';
import '../../user_module/login/start.dart';
import '../../user_module/profile/editprofile.dart';
import '../Add vehicles/used/add bike.dart';
class Phome extends StatefulWidget {
  const Phome({super.key});

  @override
  State<Phome> createState() => _PhomeState();
}

class _PhomeState extends State<Phome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(60),
        child:   AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Image(image: AssetImage('assets/l2.png'),fit: BoxFit.cover,),
          title: Padding(
            padding: const EdgeInsets.only(top: 17),
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
                        MaterialPageRoute(builder: (context) =>Phome()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),

                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>my_car()));
                  },
                  child: ListTile(
                    leading: Icon(CupertinoIcons.car_detailed),
                    title: Text('My Cars'),

                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>my_bike()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.directions_bike_outlined),
                    title: Text('My Bikes'),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>my_accessories()));
                  },
                  child: ListTile(
                    leading: Icon(CupertinoIcons.shopping_cart),
                    title: Text('My Accessories'),

                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                        // MaterialPageRoute(builder: (context) => services()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.settings_suggest_outlined),
                    title: Text('Service'),

                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => my_order()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('My orders'),


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
                    title: Text('Feedback'),

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
                            Navigator.pop(context);
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


        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hi Shein',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),),
              Card(
                elevation: 2,
                child: Container(
                  height: 240,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/home/phome1.png'),fit: BoxFit.contain)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('RENT YOUR CAR,SELL YOUR CAR',style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('SERVICES',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 170,
                     decoration: BoxDecoration(
                     ),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>add_usedcar(type: 'car',)));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(CupertinoIcons.car_detailed,color: Colors.black,size: 33,),
                          Text('ADD CARS',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,),)
                        ],
                      )
                      )
                    ),
                    Container(
                      height: 60,
                      width: 170,
                        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>add_usedbike(type: 'bike',)));

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.motorcycle_rounded,color: Colors.black,size: 38,),
                                Text('ADD BIKES',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),)
                              ],
                            )
                        )                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 170,
                        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                            onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>add_rental()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.car_rental_rounded,color: Colors.black,size: 35,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('ADD RENTAL',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                    Text('VEHICLES',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:10 ),),
                                  ],
                                )
                              ],
                            )
                        )                    ),
                    Container(
                      height: 60,
                      width: 170,
                        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>add_accessories()));
                        },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(CupertinoIcons.bag_fill_badge_plus,color: Colors.black,size: 33,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('ADD ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                      Text('ACCESSORIES',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize:10 ),),
                                    ],
                                  ),
                                )                              ],
                            )
                        )                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text('FEEDBACK',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Container(
                height: 232,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: feedbackmodel.length,
                    itemBuilder: (context,index){
                      var starcount=int.parse(feedbackmodel[index]['star']);
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          // color: Colors.cyan,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Container(
                            height: 170,
                            width: 315,
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        radius: 20,
                                        child:  ClipOval(child: Image.asset('assets/home/${feedbackmodel[index]['img']}',fit: BoxFit.contain,)),
                                        backgroundColor: Colors.white38,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${feedbackmodel[index]['name']}'),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 2,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('${feedbackmodel[index]['heading']}',style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('${feedbackmodel[index]['dis']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 20,
                                    child: ListView.builder(
                                        scrollDirection:Axis.horizontal,
                                        itemCount: 5,
                                        itemBuilder: (context,index){
                                          return (index<starcount)? Icon(Icons.star,color: Colors.amber,):Icon(Icons.star_border,color: Colors.amber,);
                                        }),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: TextField(
                  maxLines: 8 ,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Enter your feedback here....',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black26,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      )
                  ),
                ),
              ),
              Center(
                  child: Card(
                    color: Color(0xff283673),

                shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Container(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff283673),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))
                        ),onPressed: (){}, child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 16),))),
                  )),
              SizedBox(height: 20,),


            ],
          ),
        ),
      ),


    );
  }
}
