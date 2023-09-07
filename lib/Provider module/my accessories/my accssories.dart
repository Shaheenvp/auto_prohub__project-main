import 'package:flutter/material.dart';

import 'detail.dart';
class my_accessories extends StatefulWidget {
  const my_accessories({super.key});

  @override
  State<my_accessories> createState() => _my_accessoriesState();
}

class _my_accessoriesState extends State<my_accessories> {
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
        child: ListView.separated(
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>car_detail(
                      id:index+1 )));
                },
                child: ListTile(
                  // leading: Text(' ${index+1}',style: TextStyle(fontSize: 14,color: Colors.black38),),
                  leading: Image(image: AssetImage('assets/pacc_dt/hd.jpeg'),fit: BoxFit.contain,),
                  title: Text('Headlight ${index+1}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('GVAA ',style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  trailing:Text('\$${index+1}000',style: TextStyle(fontSize: 14,color: Colors.black38) ),
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
