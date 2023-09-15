
import 'dart:convert';

import 'package:autoprohub/user_module/rental/bike/detailpage.dart';
import 'package:autoprohub/user_module/rental/bike/rentbikemodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../../Connection/connect.dart';
import '../../bikes/detail_page.dart';
import '../../home/feedback.dart';
import '../../login/login.dart';

import 'package:autoprohub/navbar.dart';
import '../../login/start.dart';
import '../../profile/editprofile.dart';
import '../../services/services.dart';
import 'bikeads.dart';class rentbike extends StatefulWidget {
  const rentbike({super.key});

  @override
  State<rentbike> createState() => _rentbikeState();
}

class _rentbikeState extends State<rentbike> {

  List <String>segments = [];
  Future<List<dynamic>> getdata(String segment) async{
    var response = await post(Uri.parse('${Con.url}/rental/view_rentbike.php'),
        body: {
          'segment':segment
        });
    print(response.body);

    return jsonDecode(response.body);
  }
  Future <void> getsegment() async {
    var response = await get(
        Uri.parse('${Con.url}/rental/view_segment_rentbike.php'));
    print(response.body);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      final List<String> fetchedSegments = data.map((segmentMap) {
        return segmentMap['segment'] as String;
      }).toList();
      setState(() {
        segments = fetchedSegments;
      });
    }



    else {
      throw Exception('failed to load segments');
    }
  }
  @override
  void initState()
  {
    super.initState();
    getsegment();
  }

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
    child: rentbikeads(),
    ),
    ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Vehicle Types',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.search))
          ],
        ),
      ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text('Premium Bikes',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
      //       IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
      //     ],
      //   ),
      // ),
      Container(
        height: MediaQuery.of(context).size.height-400,
        // width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount:segments.length,
            itemBuilder: (context,index){
              return
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(segments[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
                          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
                        ],
                      ),
                    ),
                    Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width,
                      child: FutureBuilder(future: getdata( segments[index]
                        // segments[index]
                      ),
                          builder: (context, snapshot) {
                            return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data!.length,
                                itemBuilder: (context,index){
                                  return
                                    GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_bike_rental(
                                            img: snapshot.data![index]['img'],
                                            name: snapshot.data![index]['vehicle_name'],
                                            dis: snapshot.data![index]['fuel'],
                                            rate: snapshot.data![index]['price'],

                                          )));
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
                                                        image: DecorationImage(image: NetworkImage('${Con.url}/Provider module/rent_vehicle/${snapshot.data![index]['img']}'),fit: BoxFit.cover),
                                                        color: Colors.blue
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0,top: 130),
                                                  child: Text('${snapshot.data![index]['vehicle_name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0,top: 150),
                                                  child: Text('${snapshot.data![index]['fuel']}'),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0,top: 180),
                                                  child: Text('${snapshot.data![index]['price']}'),
                                                ),

                                              ]),
                                        ));



                                }
                            );
                          }
                      ),
                    ),

                  ],
                );
                // GestureDetector(
                //   onTap: (){
                //     Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_bike_rental(img: rentbikemodel1[index]['img'],
                //         name: rentbikemodel1[index]['vehicle_name'],
                //         dis: rentbikemodel1[index]['fuel'],
                //         rate: rentbikemodel1[index]['price'],
                //        )));
                //   },
                //   child: Card(
                //     elevation: 4,
                //     child: Stack(
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: Container(
                //               height: 200,
                //               width: 200,
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(15),
                //
                //               ),
                //
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: Container(
                //               height: 122,
                //               width: 200,
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(15),
                //                   image: DecorationImage(image: AssetImage('assets/bikes/${rentbikemodel1[index]['img']}'),fit: BoxFit.cover),
                //                   color: Colors.blue
                //               ),
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(left: 8.0,top: 130),
                //             child: Text('${rentbikemodel1[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(left: 8.0,top: 150),
                //             child: Text('${rentbikemodel1[index]['dis']}'),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(left: 8.0,top: 180),
                //             child: Text('${rentbikemodel1[index]['rate']}'),
                //           ),
                //
                //         ]),
                //   ),
                // );



            }
        ),
      ),
      // SizedBox(height: 10,),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text('Bikes',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
      //       IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
      //     ],
      //   ),
      // ),
      // Container(
      //   height: 220,
      //   width: MediaQuery.of(context).size.width,
      //   child: ListView.builder(
      //       scrollDirection: Axis.horizontal,
      //       itemCount: rentbikemodel.length,
      //       itemBuilder: (context,index){
      //         return
      //           GestureDetector(
      //             onTap: (){
      //               Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_bike(img:  rentbikemodel[index]['img'],
      //                   name:  rentbikemodel[index]['name'],
      //                   dis:  rentbikemodel[index]['dis'],
      //                   rate:  rentbikemodel[index]['rate'],
      //                   cc:  rentbikemodel[index]['cc'],
      //                   milege:  rentbikemodel[index]['milege'],
      //                   disc:  rentbikemodel[index]['disc'],
      //                   year:  rentbikemodel[index]['year'])));
      //             },
      //             child: Card(
      //               elevation: 4,
      //               child: Stack(
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.all(8.0),
      //                       child: Container(
      //                         height: 200,
      //                         width: 200,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(15),
      //
      //                         ),
      //
      //                       ),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.all(8.0),
      //                       child: Container(
      //                         height: 122,
      //                         width: 200,
      //                         decoration: BoxDecoration(
      //                             borderRadius: BorderRadius.circular(15),
      //                             image: DecorationImage(image: AssetImage('assets/bikes/${rentbikemodel[index]['img']}'),fit: BoxFit.cover),
      //                             color: Colors.blue
      //                         ),
      //                       ),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(left: 8.0,top: 130),
      //                       child: Text('${rentbikemodel[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(left: 8.0,top: 150),
      //                       child: Text('${rentbikemodel[index]['dis']}'),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(left: 8.0,top: 180),
      //                       child: Text('${rentbikemodel[index]['rate']}'),
      //                     ),
      //
      //                   ]),
      //             ),
      //           );
      //
      //
      //
      //       }
      //   ),
      // ),
      // SizedBox(height: 10,),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text('Scooter',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
      //       IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
      //     ],
      //   ),
      // ),
      // Container(
      //   height: 220,
      //   width: MediaQuery.of(context).size.width,
      //   child: ListView.builder(
      //       scrollDirection: Axis.horizontal,
      //       itemCount: rentbikemodel2.length,
      //       itemBuilder: (context,index){
      //         return
      //           GestureDetector(
      //             onTap: (){
      //               Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_bike(img:  rentbikemodel2[index]['img'],
      //                   name:  rentbikemodel2[index]['name'],
      //                   dis:  rentbikemodel2[index]['dis'],
      //                   rate:  rentbikemodel2[index]['rate'],
      //                   cc:  rentbikemodel2[index]['cc'],
      //                   milege:  rentbikemodel2[index]['milege'],
      //                   disc:  rentbikemodel2[index]['disc'],
      //                   year:  rentbikemodel2[index]['year'])));
      //             },
      //             child: Card(
      //               elevation: 4,
      //               child: Stack(
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.all(8.0),
      //                       child: Container(
      //                         height: 200,
      //                         width: 200,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(15),
      //
      //                         ),
      //
      //                       ),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.all(8.0),
      //                       child: Container(
      //                         height: 122,
      //                         width: 200,
      //                         decoration: BoxDecoration(
      //                             borderRadius: BorderRadius.circular(15),
      //                             image: DecorationImage(image: AssetImage('assets/bikes/${rentbikemodel2[index]['img']}'),fit: BoxFit.cover),
      //                             color: Colors.blue
      //                         ),
      //                       ),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(left: 8.0,top: 130),
      //                       child: Text('${rentbikemodel2[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(left: 8.0,top: 150),
      //                       child: Text('${rentbikemodel2[index]['dis']}'),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(left: 8.0,top: 180),
      //                       child: Text('${rentbikemodel2[index]['rate']}'),
      //                     ),
      //
      //                   ]),
      //             ),
      //           );
      //
      //
      //
      //       }
      //   ),
      // ),
      SizedBox(height: 15,)

    ])
    )
        )
    );
  }
}
