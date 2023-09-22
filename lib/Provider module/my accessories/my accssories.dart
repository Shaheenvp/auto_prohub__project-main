import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../user_module/Connection/connect.dart';
import 'detail.dart';
class my_accessories extends StatefulWidget {
  const my_accessories({super.key});

  @override
  State<my_accessories> createState() => _my_accessoriesState();
}

class _my_accessoriesState extends State<my_accessories> {
  var res;
  Future<List<dynamic>> getdata() async{
    var response1 = await post(Uri.parse('${Con.url}/accessories/view_car_accessories.php'),
        body: {
          'type':'Car'
        });
    var response2 = await post(Uri.parse('${Con.url}/accessories/view_bike_accessories.php'),
        body: {
          'type':'Bike'
        });
    print(response1.body);
    print(response2.body);

    var res1 = jsonDecode(response1.body);
    var res2 = jsonDecode(response2.body);
    res = res1+res2;

    print(res);
    return res;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text('My Accessories',style: TextStyle(color: Colors.black45),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: FutureBuilder(
            future: getdata(),

          builder: (context, snapshot) {
            return ListView.separated(
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>car_detail(
                          id:index+1,
                        img: snapshot.data![index]['img'],
                        brand_name: snapshot.data![index]['brand_name'],
                        offer_price: snapshot.data![index]['offer_price'],
                        Product_name: snapshot.data![index]['Product_name'],
                        dis: snapshot.data![index]['discription'], )));
                    },
                    child: ListTile(
                      // leading: Text(' ${index+1}',style: TextStyle(fontSize: 14,color: Colors.black38),),
                      leading: Image(image:  NetworkImage('${Con.url}/Provider module/accessories/${snapshot.data![index]['img']}'),fit: BoxFit.contain,),
                      title: Text('${snapshot.data![index]['Product_name']}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${snapshot.data![index]['brand_name']}',style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      trailing:Text('${snapshot.data![index]['offer_price']}',style: TextStyle(fontSize: 14,color: Colors.black38) ),
                    ),
                  );
                },
                separatorBuilder: (context,index){
                  return Divider();

                },
                itemCount: snapshot.data!.length);
          }
        ),
      ),

    );
  }
}
