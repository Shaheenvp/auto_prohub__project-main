
import 'package:autoprohub/user_module/home/pageview.dart';
import 'package:autoprohub/navbar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Accesseroris/Accessesries.dart';
import '../bikes/usedbikes.dart';
import '../login/login.dart';
import '../login/start.dart';
import '../profile/editprofile.dart';
import '../rental/renthome.dart';
import '../services/services.dart';
import '../services/usedcars/usedcars.dart';
import 'feedback.dart';
import 'feedbackmodel.dart';
import 'menu.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {



  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(preferredSize: Size.fromHeight(60),
            child:   AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Icon(CupertinoIcons.car_detailed,color: Colors.black,size: 25,)
          ),
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

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:12,top: 15),
                child: Text('Service is what all life about....',),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('Hi Shein,',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              ),
             Container(
               height: 200,
               child: PageviewExample(),
             ),
             // PageviewExample()
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text('Services',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>rental()));
                          }, icon: Icon(Icons.car_rental,size: 45,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,top: 12),
                            child: Text('RENTAL',style: TextStyle(fontWeight: FontWeight.w700,),),
                          )


                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>usedcars()));
                          }, icon: Icon(CupertinoIcons.car_fill,size: 45,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,top: 12),
                            child: Text('CARS',style: TextStyle(fontWeight: FontWeight.w700),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Accesserois()));
                          }, icon: Icon(CupertinoIcons.bag_fill,size: 45,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,top: 12),
                            child: Text('ACCESSORIES',style: TextStyle(fontWeight: FontWeight.w700),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>usedbikes()));
                          }, icon: Icon(Icons.motorcycle_rounded,size: 45,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,top: 12),
                            child: Text('BIKES',style: TextStyle(fontWeight: FontWeight.w700),),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 350,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: AssetImage('assets/home/img1.png.jpg'))
                  ),
                ),
              ),
              SizedBox(height: 10,),
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
                      return Card(
                        elevation: 5,
                        child: Container(
                          height: 170,
                          width: 315,
                          decoration: BoxDecoration(
                            color: Colors.white38,
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
                                        return (index<starcount)? Icon(Icons.star,color: Colors.yellow,):Icon(Icons.star_border);
                                      }),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 8 ,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Enter your feedback here....',
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Center(child: Container(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff283673),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                  ),onPressed: (){}, child: Text('Submit')))),
              SizedBox(height: 20,),


            ],
          ),

        ),
        



      ),
    );
  }
}
