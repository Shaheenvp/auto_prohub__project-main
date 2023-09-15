
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../navbar.dart';
import '../../Connection/connect.dart';
import '../../home/feedback.dart';
import '../../login/login.dart';
import '../../login/start.dart';
import '../../profile/editprofile.dart';
class detail_page_car_rental extends StatefulWidget {
  detail_page_car_rental({Key? key,required this.img,required this.name,required this.dis,required this.rate,}) : super(key: key);
  var img,name,dis,rate;

  @override
  State<detail_page_car_rental> createState() => _detail_page_car_rentalState();
}

class _detail_page_car_rentalState extends State<detail_page_car_rental> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('${Con.url}/Provider module/rent_vehicle/${widget.img}'),fit: BoxFit.contain)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(widget.dis,style: TextStyle(fontSize: 15),),
                  SizedBox(height: 10,),
                  Text(widget.rate,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                ],
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(left: 8.0,top: 10),
            //   child: Text('Specification',style: TextStyle(color: Colors.black54),),
            // ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 10.0,top: 10),
            //       child: Card(
            //         elevation: 30,
            //         child: Container(
            //           height: 60,
            //           width: 70,
            //           decoration: BoxDecoration(),
            //           child: Padding(
            //             padding: const EdgeInsets.all(7.0),
            //             child: Column(
            //               children: [
            //                 Container(
            //                     height: 30,
            //                     width: 30,
            //                     child: Image(image: AssetImage('assets/detailpage/eng.png'),fit: BoxFit.cover,)),
            //                 Text(widget.cc)
            //               ],
            //             ),
            //           ),
            //
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 10.0,top: 10),
            //       child: Card(
            //         elevation: 30,
            //         child: Container(
            //           height: 60,
            //           width: 70,
            //           decoration: BoxDecoration(),
            //           child: Padding(
            //             padding: const EdgeInsets.all(7.0),
            //             child: Column(
            //               children: [
            //                 Container(
            //                     height: 30,
            //                     width: 27,
            //                     child: Image(image: AssetImage('assets/detailpage/speed.png'),fit: BoxFit.contain,)),
            //                 SizedBox(height: 0,),
            //                 Text(widget.milege)
            //               ],
            //             ),
            //           ),
            //
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 10.0,top: 10),
            //       child: Card(
            //         elevation: 30,
            //         child: Container(
            //           height: 60,
            //           width: 70,
            //           decoration: BoxDecoration(),
            //           child: Padding(
            //             padding: const EdgeInsets.all(7.0),
            //             child: Column(
            //               children: [
            //                 Container(
            //                     height: 30,
            //                     width: 27,
            //                     child: Text('KM'),),
            //                 SizedBox(height: 0,),
            //                 Text(widget.disc)
            //               ],
            //             ),
            //           ),
            //
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 10.0,top: 10),
            //       child: Card(
            //         elevation: 30,
            //         child: Container(
            //           height: 60,
            //           width: 70,
            //           decoration: BoxDecoration(),
            //           child: Padding(
            //             padding: const EdgeInsets.all(7.0),
            //             child: Column(
            //               children: [
            //                 Container(
            //                     height: 30,
            //                     width: 25,
            //                     child: Image(image: AssetImage('assets/detailpage/yr.png'),fit: BoxFit.contain,)),
            //                 SizedBox(height: 0,),
            //                 Text(widget.year)
            //               ],
            //             ),
            //           ),
            //
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                  height: 50,
                  width: 345,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff283673)
                  ),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff283673),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                  }, child: Text('Book Now',style: TextStyle(color: Colors.white),),)
              ),
            ),
            SizedBox(height: 15,),



          ],
        ),
      ),
    );
  }
}
