import 'package:flutter/material.dart';
class car_detail extends StatefulWidget {
  car_detail({super.key ,required this.id});
  var id;

  @override
  State<car_detail> createState() => _car_detailState();
}

class _car_detailState extends State<car_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text('X ${widget.id}',style: TextStyle(color: Colors.black45),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black45,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.delete_rounded,color: Colors.red,)),

        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
            child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image(image: AssetImage('assets/pcar_dt/bm.jpeg'),fit: BoxFit.contain,),
            ),
          ),
          Divider(),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.black12
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Model',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey)),
                          Text('X ${widget.id}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Brand',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey)),
                          Text('BMW',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Price',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey)),
                          Text('\$${widget.id}00/hr',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Lorem Ipsum is simply dummy text of the'
                          ' printing and typesetting industry. Lorem Ipsum has'
                          'sheets containing Lorem Ipsum passages, and more recently with desktop',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                    )

                  ],
                )),
          ),
          SizedBox(height: 30,),


          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Container(
          //         height: 50,
          //         width: 150,
          //         child: ElevatedButton(
          //             style: ElevatedButton.styleFrom(
          //                 backgroundColor: Colors.red.shade400,
          //                 shape: RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(15))),
          //             onPressed: (){},
          //             child: Text('Reject',style: TextStyle(color: Colors.white,fontSize: 18),))),
          //     Container(
          //         height: 50,
          //         width: 150,
          //         child: ElevatedButton(
          //             style: ElevatedButton.styleFrom(
          //                 backgroundColor: Colors.green.shade400,
          //                 shape: RoundedRectangleBorder(
          //                     borderRadius: BorderRadius.circular(15))),
          //             onPressed: (){},
          //             child: Text('Edit',style: TextStyle(color: Colors.white,fontSize: 18),))),
          //
          //   ],
          // ),



        ],
      ),

    );
  }
}
