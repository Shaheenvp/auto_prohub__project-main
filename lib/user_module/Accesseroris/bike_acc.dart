import 'package:autoprohub/navbar.dart';
import 'package:autoprohub/user_module/Accesseroris/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class bike_ac extends StatefulWidget {
  const bike_ac({super.key});

  @override
  State<bike_ac> createState() => _bike_acState();
}

class _bike_acState extends State<bike_ac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: Text('Bike',style: TextStyle(color: Colors.black45),),
      ),
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // Container(
                  // height: 220,
                  // decoration: BoxDecoration(
                  // image: DecorationImage(image: AssetImage('assets/acc/acc.jpg'),fit: BoxFit.contain)
                  // ),
                  // ),

                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white60,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                          ),
                          focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          prefixIcon: Icon(CupertinoIcons.search),
                          hintText: 'Search here'
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>detail(
                            name: '${index+1} item',
                            price: '\$${index+1}0 ',
                            image: 'assets/acc/ad/ad3.jpg',
                            stock: ' Available',
                            offer: '${index+2}0%',
                            rate: '${index+2}00',
                          discripton: 'industry. Lorem Ipsum has been the industrys standard dummy'
                              ' text ever since the 1500s, when an unknown printer '
                              'took a galley of type and scrambled it to make a type'
                              ' specimen book. It has survived not only five centuries, '
                     ,
                              rating: 5, )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.black45
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 100,
                                width: double.infinity,
                                child: Image(image: AssetImage('assets/acc/ad/ad3.jpg'),fit: BoxFit.cover,),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('${index+1} item',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text('Stock ${index+2} ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.green),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('\$${index+2}0 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,decoration:TextDecoration.lineThrough,color: Colors.black45),),
                                      Text('\$${index+1}0 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                                    ],
                                  )

                                ],
                              ),


                            ],
                          ),
                        ),
                      ),
                    );
                  },),
              )
            ],
          ),
        ),
      ),
    );
  }
}
