import 'package:flutter/material.dart';
class rental_req extends StatefulWidget {
  const rental_req({super.key});

  @override
  State<rental_req> createState() => _rental_reqState();
}

class _rental_reqState extends State<rental_req> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: Text('Rental Requests',style: TextStyle(color: Colors.black87),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context,index){
         return Padding(
           padding: const EdgeInsets.all(7.0),
           child: Card(
             elevation: 4,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
             child: Container( 
               height: 200,
               width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
               child: Row(
                 children: [
                   Container(
                     height: 100,
                     width: 150,
                     child:
                     Image(image: AssetImage('assets/usedcars/se2.png'),fit: BoxFit.contain)
                   ),
                   SizedBox(width: 12,),
                   // SizedBox(height: 25,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     // mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SizedBox(height: 12,),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('BMW 320D',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                       ),
                       SizedBox(height: 15,),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,

                         children: [
                           Text('Name:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                           Text(' Thanseer',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Pickup:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                           Text(' Perinthalmanna',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text('Date:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                           Text(' 18/05/2023',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                         ],
                       ),
                       Row(
                         children: [
                           Text('Time:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                           Text('9.00AM - 4.00PM',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           IconButton(onPressed: (){}, icon: Icon(Icons.close,color: Colors.red,)),
                           SizedBox(width: 90,),
                           IconButton(onPressed: (){}, icon: Icon(Icons.done,color: Colors.green,)),
                         ],
                       )

                     ],
                   )
                 ],
               ),
               ),
             ),
           );

        })
      ),


    );
  }
}
