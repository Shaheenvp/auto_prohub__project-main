
import 'package:autoprohub/user_module/services/usedcars/usedcars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../navbar.dart';
import '../Accesseroris/Accessesries.dart';
import '../bikes/usedbikes.dart';
import '../home/feedback.dart';
import '../login/login.dart';
import '../login/start.dart';
import '../profile/editprofile.dart';
import '../rental/renthome.dart';
class services extends StatefulWidget {
  const services({super.key});

  @override
  State<services> createState() => _servicesState();
}

class _servicesState extends State<services> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(60),
        child:   AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
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
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('SERVICES',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>usedcars()));
                 },
                 child: Card(
                   elevation: 7,
                   child: Stack(
                     children: [
                       Container(
                         height: 200,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(

                             image: DecorationImage(image: AssetImage('assets/services/us1.png'),fit: BoxFit.cover)
                         ),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(top: 155),
                        child: Container(
                             height: 45,
                             width: MediaQuery.of(context).size.width,
                             color: Colors.white70,
                             child:  Center(child: Text('USED CARS',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),)),
                           ),
                      ),


                     ],
                   ),

                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>rental()));
                 },
                 child: Card(
                   elevation: 7,
                   child: Stack(
                     children: [
                       Container(
                         height: 200,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(

                             image: DecorationImage(image: AssetImage('assets/services/ur1.png'),fit: BoxFit.cover)
                         ),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(top: 155),
                        child: Container(
                             height: 45,
                             width: MediaQuery.of(context).size.width,
                             color: Colors.white70,
                             child:  Center(child: Text('RENT SERVICES',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),)),
                           ),
                      ),


                     ],
                   ),

                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: InkWell(
                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>usedbikes()));

                   },
                 child: Card(
                   elevation: 7,
                   child: Stack(
                     children: [
                       Container(
                         height: 200,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(

                             image: DecorationImage(image: AssetImage('assets/services/ub.png'),fit: BoxFit.cover)
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 155),
                         child: InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>usedbikes()));

                           },

                         child: Container(
                           height: 45,
                           width: MediaQuery.of(context).size.width,
                           color: Colors.white70,
                           child:  Center(child: Text('USED BIKES',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),)),
                         ),
                       ),


                       ) ],
                   ),

                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Accesserois()));

                 },

                 child: Card(
                   elevation: 7,
                   child: Stack(
                     children: [
                       Container(
                         height: 200,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(

                             image: DecorationImage(image: AssetImage('assets/services/ua.png'),fit: BoxFit.cover)
                         ),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(top: 155),
                        child: Container(
                             height: 45,
                             width: MediaQuery.of(context).size.width,
                             color: Colors.white70,
                             child:  Center(child: Text('ACCESSORIES',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),)),
                           ),
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
