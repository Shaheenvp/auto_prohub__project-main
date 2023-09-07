
import 'package:autoprohub/user_module/rental/car/rentads.dart';
import 'package:autoprohub/user_module/rental/car/rentcarmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../navbar.dart';
import '../../home/feedback.dart';
import '../../login/login.dart';
import '../../login/start.dart';
import '../../profile/editprofile.dart';
import '../../services/services.dart';
import '../../services/usedcars/car_detailpage.dart';
import '../../services/usedcars/carmodels.dart';
class rentcar extends StatefulWidget {
  const rentcar({super.key});

  @override
  State<rentcar> createState() => _rentcarState();
}

class _rentcarState extends State<rentcar> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    child: rentads(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Vehicle Types',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                      IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.search))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sedan',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
                      IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: rentcarmodel.length,
                      itemBuilder: (context,index){
                        return
                          GestureDetector(
                            onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_car(img: usedcarmodel[index]['img'],
                              name: usedcarmodel[index]['name'],
                              dis: usedcarmodel[index]['dis'],
                              rate: usedcarmodel[index]['rate'],
                              cc: usedcarmodel[index]['cc'],
                              milege: usedcarmodel[index]['milege'],
                              disc: usedcarmodel[index]['disc'],
                              year: usedcarmodel[index]['year'])));
                        },
                        child:
                          Card(
                            elevation: 4,
                            child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),

                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 122,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(image: AssetImage('assets/usedcars/${rentcarmodel[index]['img']}'),fit: BoxFit.cover),
                                          color: Colors.blue
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 130),
                                    child: Text('${rentcarmodel[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 150),
                                    child: Text('${rentcarmodel[index]['dis']}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 180),
                                    child: Text('${rentcarmodel[index]['rate']}'),
                                  ),

                                ]),
                          ));



                      }
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hatchback',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
                      IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: rentcarmodel1.length,
                      itemBuilder: (context,index){
                        return
                          GestureDetector(
                            onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_car(img: usedcarmodel1[index]['img'],
                              name: usedcarmodel1[index]['name'],
                              dis: usedcarmodel1[index]['dis'],
                              rate: usedcarmodel1[index]['rate'],
                              cc: usedcarmodel1[index]['cc'],
                              milege: usedcarmodel1[index]['milege'],
                              disc: usedcarmodel1[index]['disc'],
                              year: usedcarmodel1[index]['year'])));
                        },
                        child:
                          Card(
                            elevation: 4,
                            child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),

                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 122,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(image: AssetImage('assets/usedcars/${rentcarmodel1[index]['img']}'),fit: BoxFit.cover),
                                          color: Colors.blue
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 130),
                                    child: Text('${rentcarmodel1[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 150),
                                    child: Text('${rentcarmodel1[index]['dis']}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 180),
                                    child: Text('${rentcarmodel1[index]['rate']}'),
                                  ),

                                ]),
                          ));



                      }
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Coompact SUV',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
                      IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: rentcarmodel2.length,
                      itemBuilder: (context,index){
                        return
                          GestureDetector(
                            onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_car(img: usedcarmodel2[index]['img'],
                              name: usedcarmodel2[index]['name'],
                              dis: usedcarmodel2[index]['dis'],
                              rate: usedcarmodel2[index]['rate'],
                              cc: usedcarmodel2[index]['cc'],
                              milege: usedcarmodel2[index]['milege'],
                              disc: usedcarmodel2[index]['disc'],
                              year: usedcarmodel2[index]['year'])));
                        },
                        child:
                          Card(
                            elevation: 4,
                            child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),

                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 122,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(image: AssetImage('assets/usedcars/${rentcarmodel2[index]['img']}'),fit: BoxFit.cover),
                                          color: Colors.blue
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 130),
                                    child: Text('${rentcarmodel2[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 150),
                                    child: Text('${rentcarmodel2[index]['dis']}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 180),
                                    child: Text('${rentcarmodel2[index]['rate']}'),
                                  ),

                                ]),
                          )
                          );



                      }
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('SUV',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
                      IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: rentcarmodel3.length,
                      itemBuilder: (context,index){
                        return
                          GestureDetector(
                            onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_car(img: usedcarmodel3[index]['img'],
                              name: usedcarmodel3[index]['name'],
                              dis: usedcarmodel3[index]['dis'],
                              rate: usedcarmodel3[index]['rate'],
                              cc: usedcarmodel3[index]['cc'],
                              milege: usedcarmodel3[index]['milege'],
                              disc: usedcarmodel3[index]['disc'],
                              year: usedcarmodel3[index]['year'])));
                        },
                        child:
                          Card(
                            elevation: 4,
                            child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),

                                      ),

                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 122,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image: DecorationImage(image: AssetImage('assets/usedcars/${rentcarmodel3[index]['img']}'),fit: BoxFit.cover),
                                          color: Colors.blue
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 130),
                                    child: Text('${rentcarmodel3[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 150),
                                    child: Text('${rentcarmodel3[index]['dis']}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 180),
                                    child: Text('${rentcarmodel3[index]['rate']}'),
                                  ),

                                ]),
                          )
                          );



                      }
                  ),
                ),
                SizedBox(height: 15,)

              ],
            ),
          ),
        )

    );
  }
}
