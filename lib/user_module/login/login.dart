import 'dart:convert';

import 'package:autoprohub/navbar.dart';
import 'package:autoprohub/user_module/login/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../Connection/connect.dart';
import '../forgotpassword/forgot.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailctrl=TextEditingController();
  TextEditingController passctrl=TextEditingController();
  var reg_id;
  var visible=true;
  Future<void> senddata()
  async {
    var data={
      'email':emailctrl.text,
      'password':passctrl.text,
      'type':'user'
    };
    var response=await post(Uri.parse('${Con.url}login.php'),body: data);
    print(response.body);
    print(response.statusCode);
    if(jsonDecode(response.body)['result']=='success')
    {
      reg_id=jsonDecode(response.body)['reg_id'];
      Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid credentials')));

      setState(() {

      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //
      // ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/logins/login.jpg'),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(height: 70,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
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
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
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
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff283673)
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));

                        }, child: Text('Sign In',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 18),),)
                    ),
                  ),
                  SizedBox(height: 7,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot_password()));

                  }, child: Text('Forgot Password?',style: TextStyle(color: Colors.black38),)),
                  SizedBox(height: 32,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?'),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
                      }, child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),))
                    ],
                  ),
                  // SizedBox(height: 2,),

                ],
              ),
            ),
        ),
    );}
}
