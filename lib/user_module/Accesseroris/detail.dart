import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class detail extends StatefulWidget {
   detail({super.key,required this.name,required this.price,required this.image,
     required this.stock,required this.offer,required this.rate,required this.discripton,required this.rating});
  var image,name,price,stock,offer,rate,discripton,rating;
  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: Text('Auto Pro Hub',style: TextStyle(color: Colors.black87),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            child:
                                  Image(image: AssetImage(widget.image),fit: BoxFit.cover,),

                              ),
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            child:
                            Image(image: AssetImage(widget.image),fit: BoxFit.cover,),

                          ),
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            child:
                            Image(image: AssetImage(widget.image),fit: BoxFit.cover,),

                          ),
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width,
                            child:
                            Image(image: AssetImage(widget.image),fit: BoxFit.cover,),

                          ),

                        ],
                      ),
                    ),

                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          for(var i=0;i<widget.rating;i++)
                            Icon(Icons.star,color: Colors.amber,size: 30,),
                        ],
                      ),
                    ),
                    // Text('Stock ${widget.stock}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.green),),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('${widget.offer} off',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.green, ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text('\$${widget.rate}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black45,decoration:TextDecoration.lineThrough ),),
                        ),
                        Text(widget.price,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.discripton,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ),



                    SizedBox(height: 50),
                    Center(
                      child: Container(
                          height: 50,
                          width: 345,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff283673)
                          ),
                          child: Container(
                            height: 50,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff283673),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                            ),onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                            }, child: Text('Buy Now',style: TextStyle(color: Colors.white),),),
                          )
                      ),
                    ),



                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
