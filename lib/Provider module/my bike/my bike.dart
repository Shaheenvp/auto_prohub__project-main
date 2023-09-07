import 'package:flutter/material.dart';

import 'detail.dart';
class my_bike extends StatefulWidget {
  const my_bike({super.key});

  @override
  State<my_bike> createState() => _my_bikeState();
}

class _my_bikeState extends State<my_bike> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text('My Bikes',style: TextStyle(color: Colors.black45),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>car_detail(
                      id:index+1 )));
                },
                child: ListTile(
                  // leading: Text(' ${index+1}',style: TextStyle(fontSize: 14,color: Colors.black38),),
                  leading: Image(image: AssetImage('assets/pbike_dt/bk.jpeg')),
                  title: Text('Street ${index+1}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Harley Davidson ',style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  trailing:Text('\$${index+2}00/hr',style: TextStyle(fontSize: 14,color: Colors.green) ),
                ),
              );
            },
            separatorBuilder: (context,index){
              return Divider();

            },
            itemCount: 5),
      ),

    );
  }
}
