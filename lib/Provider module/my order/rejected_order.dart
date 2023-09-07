import 'package:autoprohub/Provider%20module/my%20order/order%20detail.dart';
import 'package:flutter/material.dart';
class rejected_order extends StatefulWidget {
  const rejected_order({super.key});

  @override
  State<rejected_order> createState() => _rejected_orderState();
}

class _rejected_orderState extends State<rejected_order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text('Rejected Orders',style: TextStyle(color: Colors.red),),
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
                  title: Text('Product ${index+15}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
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
