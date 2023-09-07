import 'package:flutter/material.dart';

import 'detail.dart';
class my_car extends StatefulWidget {
  const my_car({super.key});

  @override
  State<my_car> createState() => _my_carState();
}

class _my_carState extends State<my_car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text('My Cars',style: TextStyle(color: Colors.black45),),
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
                  leading: Image(image: AssetImage('assets/pcar_dt/bm.jpeg')),

                  title: Text('X ${index+1}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('BMW ',style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  trailing:Text('\$${index+1}00/hr',style: TextStyle(fontSize: 14,color: Colors.black38) ),
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
