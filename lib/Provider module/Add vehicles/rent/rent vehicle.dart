import 'package:autoprohub/Provider%20module/Add%20vehicles/rent/add%20bike.dart';
import 'package:autoprohub/Provider%20module/Add%20vehicles/rent/add%20car.dart';
import 'package:autoprohub/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class add_rental extends StatefulWidget {
  const add_rental({super.key});

  @override
  State<add_rental> createState() => _add_rentalState();
}

class _add_rentalState extends State<add_rental> {
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
        ),
      ),
 

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>add_rentcar(type: 'car',)));
                },
                child: Card(
                  elevation: 3,
                  child: Stack(
                      children:[ Opacity(

                        opacity: 0.7,
                        child: Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage('assets/services/rentcar.jpeg'),fit: BoxFit.cover),
                          ),
                        ),
                      ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(' Add Car',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold,fontFamily: 'soriya'),),
                                Icon(Icons.add,size: 40,color: Colors.white,),

                              ],
                            ),
                          ),
                        )
                      ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>add_rentbike(type: 'bike',)));
                },
                child: Card(
                  elevation: 3,
                  child: Stack(
                      children:[ Opacity(

                        opacity: 0.5,
                        child: Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage('assets/services/rentbike.jpeg'),fit: BoxFit.cover),
                          ),
                        ),
                      ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(' Add Bike',style: TextStyle(color: Colors.black87,fontSize: 28,fontWeight: FontWeight.bold,fontFamily: 'soriya'),),
                                Icon(Icons.add,size: 40,color: Colors.black87,),

                              ],
                            ),
                          ),
                        )
                      ]
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
