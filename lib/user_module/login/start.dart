

import 'package:autoprohub/Provider%20module/login/login.dart';
import 'package:flutter/material.dart';

import 'login.dart';
class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/logins/home.jpg',),fit: BoxFit.fill)
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),


                    ),

                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                         backgroundColor: Color(0xff283673),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));

                    },
                        child: Text('Login as User',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                      ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 55,
                    width: 320,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                    ),onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Plogin()));
                    },
                        child: Text('Login as Provider',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  SizedBox(height: 80,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
