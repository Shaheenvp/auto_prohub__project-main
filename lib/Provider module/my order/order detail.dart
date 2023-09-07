import 'package:flutter/material.dart';
class order_detail extends StatefulWidget {
   order_detail({super.key ,required this.id});
  var id;

  @override
  State<order_detail> createState() => _order_detailState();
}

class _order_detailState extends State<order_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text('Product ${widget.id}',style: TextStyle(color: Colors.black45),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              child: Image(image: AssetImage('assets/acc_detail/sp2.jpeg'),fit: BoxFit.cover,),
            ),
          ),
          Divider(),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text('Name ${widget.id}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey)),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Place',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),
                        Text('Street ${widget.id}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),
                        Text('House No: ${widget.id}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('994797775${widget.id}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),
                        Text('994797775${widget.id}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),

                      ],
                    ),
                  ],
                )),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Colors.black45
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Quantity :${widget.id}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green.shade500),),
                        Text('Price :${widget.id}000',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),),


                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Total ${widget.id*widget.id}000',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.red.shade300),),
                  ],
                )),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade400,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: (){},
                      child: Text('Reject',style: TextStyle(color: Colors.white,fontSize: 18),))),
              Container(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade400,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: (){},
                      child: Text('Shipped',style: TextStyle(color: Colors.white,fontSize: 18),))),

            ],
          ),



        ],
      ),

    );
  }
}
