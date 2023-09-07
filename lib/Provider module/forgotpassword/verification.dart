
import 'package:autoprohub/user_module/forgotpassword/reset_password.dart';
import 'package:flutter/material.dart';
class verification_code extends StatefulWidget {
  const verification_code({super.key});

  @override
  State<verification_code> createState() => _verification_codeState();
}

class _verification_codeState extends State<verification_code> {
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
            child: Text('Verification Code',style: TextStyle(fontSize: 20),),
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
                  image: DecorationImage(image: AssetImage('assets/logins/f1.png.png'))
              ),
            ),
            Text('Verify email address',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('verification code sent to : abc@gmail.com'),
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
                    label: Text('Enter Code'),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>reset_password()));
                }, child: Text('Verify',style: TextStyle(color: Colors.white),),)
            ),
          ],
        ),
      ),
    );
  }
}
