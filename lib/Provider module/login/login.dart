import 'package:autoprohub/Provider%20module/Home/home.dart';
import 'package:autoprohub/Provider%20module/login/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../user_module/forgotpassword/forgot.dart';
import '../forgotpassword/forgot.dart';
class Plogin extends StatefulWidget {
  const Plogin({super.key});

  @override
  State<Plogin> createState() => _PloginState();
}

class _PloginState extends State<Plogin> {
  var visible=true;
  TextEditingController emailctrl=TextEditingController();
  TextEditingController passctrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // body: Container(
        //   height: MediaQuery.of(context).size.height,
        //   width: MediaQuery.of(context).size.width,
        //   decoration: BoxDecoration(
        //     color: Colors.white
        //     // image: DecorationImage(image: AssetImage('assets/logins/car.png'),fit: BoxFit.cover)
        //     ),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         SizedBox(height: 85,),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Container(
        //             decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(15),
        //                 color: Colors.white60
        //             ),
        //             child: TextField(
        //               decoration: InputDecoration(
        //                 label: Text('E-mail'),
        //                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        //                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        //
        //               ),
        //             ),
        //           ),
        //         ),
        //         SizedBox(height: 5,),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Container(
        //             decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(15),
        //                 color: Colors.white60
        //             ),
        //             child: TextField(
        //               decoration: InputDecoration(
        //                 label: Text('Password'),
        //                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        //                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        //
        //               ),
        //             ),
        //           ),
        //         ),
        //         SizedBox(height: 15,),
        //         Container(
        //             height: 50,
        //             width: 388,
        //             decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(30),
        //                 color: Color(0xff283673)
        //             ),
        //             child: ElevatedButton(style: ElevatedButton.styleFrom(
        //                 backgroundColor: Color(0xff283673),
        //                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
        //             ),onPressed: () {
        //               // Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
        //             }, child: Text('Sign In',style: TextStyle(color: Colors.white),),)
        //         ),
        //         SizedBox(height: 7,),
        //         TextButton(onPressed: (){
        //           Navigator.push(context, MaterialPageRoute(builder: (context)=>Pforgot_password()));
        //
        //         }, child: Text('Forgot Password?',style: TextStyle(color: Colors.white),)),
        //         SizedBox(height: 50,),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text('Dont have an account?',style: TextStyle(color: Colors.white),),
        //             TextButton(onPressed: (){
        //               Navigator.push(context, MaterialPageRoute(builder: (context)=>Pregister()));
        //             }, child: Text('Sign Up',style: TextStyle(color: Colors.black54 ),))
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/logins/provider.jpeg'),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 360,
                    child: TextFormField(
                      controller: emailctrl,
                      decoration: InputDecoration(
                        label: Text('E-mail'),
                        suffixIcon: Icon(CupertinoIcons.person,color: Colors.black,),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 360,
                    child: TextFormField(
                      obscureText: visible,
                      controller: passctrl,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            visible=!visible;
                            print(visible);
                          });
                        }, icon:(visible)?Icon(Icons.visibility_off, color: Colors.black,):Icon(Icons.visibility,color: Colors.black,)),

                        label: Text('Password'),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                      ),
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot_password()));

                  }, child: Text('Forgot Password?',style: TextStyle(color: Colors.black38),)),

                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Container(
                        height: 50,
                        width: 280,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff283673),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                        ),onPressed: () {
                          // if(emailctrl.text.isNotEmpty && passctrl.text.isNotEmpty){
                          //   setState(() {
                          //     senddata();
                          //   }
                          //   );
                          // }
                          // else{
                          //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('All feilds required')));
                          // }
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Phome()));

                        }, child: Text('Sign In',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 18),),)
                    ),
                  ),
                  SizedBox(height: 7,),
                  SizedBox(height: 32,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?'),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Pregister()));
                      }, child: Text('Sign Up'))
                    ],
                  ),
                  // SizedBox(height: 2,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
