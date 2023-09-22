import 'dart:convert';

import 'package:autoprohub/navbar.dart';
import 'package:autoprohub/user_module/Accesseroris/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../Connection/connect.dart';
class bike_ac extends StatefulWidget {
   bike_ac({super.key,required this.type});
   var type;

  @override
  State<bike_ac> createState() => _bike_acState();
}

class _bike_acState extends State<bike_ac> {
var flag=0;
  Future<dynamic> getdata() async{
    var response = await post(Uri.parse('${Con.url}/accessories/view_bike_accessories.php'),
        body: {
          'type':widget.type
        });
    print(response.body);
    if(jsonDecode(response.body)[0]['result']=='success'){
      flag=1;
      return jsonDecode(response.body);


    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: Text('Bike',style: TextStyle(color: Colors.black45),),
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
                  print( snapshot.data.length,);
                  if(snapshot.hasError)print(snapshot.error);
                  if(!snapshot.hasData||snapshot.data.length==0){
                   return Center(
                      child: Text('Nothing to show..'));

                  }


                      return flag==1?GridView.builder(
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
                        },):
                      Center(child: CircularProgressIndicator(),)
                      ;
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
