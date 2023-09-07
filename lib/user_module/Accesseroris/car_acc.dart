import 'package:autoprohub/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class car extends StatefulWidget {
  const car({super.key});

  @override
  State<car> createState() => _carState();
}

class _carState extends State<car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CupertinoColors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.back,color: Colors.black45,size: 35,),),
        title: Text('Car',style: TextStyle(color: Colors.black45),),
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
                    return Padding(
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
