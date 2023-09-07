
import 'package:autoprohub/user_module/forgotpassword/verification.dart';
import 'package:flutter/material.dart';
class Pforgot_password extends StatefulWidget {
  const Pforgot_password({super.key});

  @override
  State<Pforgot_password> createState() => _Pforgot_passwordState();
}

class _Pforgot_passwordState extends State<Pforgot_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            child: Text('Forgot Password',style: TextStyle(fontSize: 20),),
          ),


        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logins/f.png'))
              ),
            ),
            Text('Forgot Password ?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Please enter your email to receive a confirmation code to set a new password.'),
            ),
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
                    label: Text('Enter your E-mail'),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>verification_code()));
                }, child: Text('Send Code',style: TextStyle(color: Colors.white),),)
            ),
          ],
        ),
      ),
    );
  }
}
