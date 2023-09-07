import 'package:autoprohub/Provider%20module/my%20order/order%20detail.dart';
import 'package:autoprohub/Provider%20module/my%20order/rejected_order.dart';
import 'package:autoprohub/Provider%20module/my%20order/shipped_order.dart';
import 'package:flutter/material.dart';
class my_order extends StatefulWidget {
  const my_order({super.key});

  @override
  State<my_order> createState() => _my_orderState();
}

class _my_orderState extends State<my_order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text('My Orders',style: TextStyle(color: Colors.black45),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>rejected_order()));
          }, icon: Icon(Icons.cancel_outlined,color: Colors.red,)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>shipped_order()));

          }, icon: Icon(Icons.local_shipping,color: Colors.green,)),

        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>order_detail(
                      id:index+1 )));
                },
                child: ListTile(
                  leading: Text(' ${index+1}',style: TextStyle(fontSize: 14,color: Colors.black38),),
                  title: Text('Product ${index}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Brand ${index+1}',style: TextStyle(fontSize: 15)),
                      Text('* ${index+1}',style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  trailing:Text('${index+1}/${index+1}/2023',style: TextStyle(fontSize: 14,color: Colors.black38) ),
                ),
              );
            },
            separatorBuilder: (context,index){
              return Divider();

            },
            itemCount: 12),
      ),

    );
  }
}
