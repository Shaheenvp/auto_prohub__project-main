import 'dart:convert';

import 'package:autoprohub/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../Connection/connect.dart';
class car extends StatefulWidget {
  var type;
   car({super.key ,required this.type,});

  @override
  State<car> createState() => _carState();
}

class _carState extends State<car> {

  Future<List<dynamic>> getdata() async{
    var response = await post(Uri.parse('${Con.url}/accessories/view_car_accessories.php'),
        body: {
          'type':widget.type
        });
    print(response.body);

    return jsonDecode(response.body);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.back,color: Colors.black45,size: 35,),),
        title: Text('Car',style: TextStyle(color: Colors.black45),),
      ),
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // Container(
                  // height: 220,
                  // decoration: BoxDecoration(
                  // image: DecorationImage(image: AssetImage('assets/acc/acc.jpg'),fit: BoxFit.contain)
                  // ),
                  // ),

                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white60,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                          ),
                          focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          prefixIcon: Icon(CupertinoIcons.search),
                          hintText: 'Search here'
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height,
                child: FutureBuilder(future: getdata(),
                  builder: (context, snapshot) {
                    return GridView.builder(
                      itemCount: snapshot.data!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.black45
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 100,
                                  width: double.infinity,
                                  child: Image(image: NetworkImage('${Con.url}/Provider module/accessories/${snapshot.data![index]['img']}'),fit: BoxFit.cover,),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('${snapshot.data![index]['Product_name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                    // Padding(
                                    //   padding: const EdgeInsets.all(5.0),
                                    //   child: Text('Stock ${index+2} ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.green),),
                                    // ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('${snapshot.data![index]['price']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,decoration:TextDecoration.lineThrough,color: Colors.black45),),
                                        Text('${snapshot.data![index]['offer_price']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                                      ],
                                    )

                                  ],
                                ),


                              ],
                            ),
                          ),
                        );
                      },);
                  }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
