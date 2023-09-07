import 'package:flutter/material.dart';

import '../login/login.dart';
class reset_password extends StatefulWidget {
  const reset_password({super.key});

  @override
  State<reset_password> createState() => _reset_passwordState();
}

class _reset_passwordState extends State<reset_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(55),
        child:   AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.only(top: 15),
            child:   IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Reset Password',style: TextStyle(fontSize: 20),),
          ),


        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Text('New Password',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text('Please enter your new password'),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 390,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // color: Color(0xffD9D9D9)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Enter New Password'),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                  ),
                ),
              ),
            ),  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 390,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // color: Color(0xffD9D9D9)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Conform New Password'),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                  ),
                ),
              ),
            ),
            Container(
                height: 50,
                width: 345,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff283673)
                ),
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff283673),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                }, child: Text('Continew',style: TextStyle(color: Colors.white),),)
            ),
          ],
        ),
      ),
    );
  }
}
