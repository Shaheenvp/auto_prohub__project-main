import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../user_module/Connection/connect.dart';
import '../login/login.dart';
import 'package:http/http.dart';
class Pregister extends StatefulWidget {
  const Pregister({super.key});

  @override
  State<Pregister> createState() => _PregisterState();
}

class _PregisterState extends State<Pregister> {
  var visible=true;
  var visible1=true;

  TextEditingController unamectrl=TextEditingController();
  TextEditingController emailctrl=TextEditingController();
  TextEditingController noctrl=TextEditingController();
  TextEditingController passctrl=TextEditingController();
  TextEditingController cpassctrl=TextEditingController();
  final GlobalKey<FormState> formkey=GlobalKey<FormState>();

  Future<void> sendData() async {
    var data = {
      'name': unamectrl.text,
      'email': emailctrl.text,
      'phone': noctrl.text,
      'password': passctrl.text,
      'type':'provider'
    };
    var response = await post(Uri.parse('${Con.url}insert.php'), body: data);
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      if (jsonDecode(response.body)['result'] == 'success') {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Succesfully registerd')));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Plogin()));
      }
      else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('failed registraion')));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Pregister()));
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(60),
        child:   AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.only(top: 15),
            child:   IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Plogin()));
            }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 17),
            child: Row(
              children: [
                Text('Auto Pro Hub',style: TextStyle(color: Colors.black54,fontSize: 25),),
              ],
            ),
          ),

        ),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all( 10),
                  child: TextFormField(
                    validator: (val){
                      if ( val!.isEmpty){
                        return 'field required';
                      }
                    },
                    controller: unamectrl,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        suffixIcon: Icon(CupertinoIcons.person),
                        filled: true,
                        fillColor: Color(0xffDCDADA),
                        hintText: ' Username',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,

                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.all( 10),
                  child: TextFormField(
                    validator: (val){
                      if ( val!.isEmpty){
                        return 'field required';
                      }
                    },
                    controller: emailctrl,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.email_outlined),
                        filled: true,
                        fillColor: Color(0xffDCDADA),
                        hintText: ' Email',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,

                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.all( 10),
                  child: TextFormField(
                    validator: (val){
                      if ( val!.isEmpty){
                        return 'field required';
                      }
                    },
                    controller: noctrl,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.mobile_friendly_sharp),
                        filled: true,
                        fillColor: Color(0xffDCDADA),
                        hintText: ' Mobile no',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,

                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.all( 10),
                  child: TextFormField(
                    obscureText: visible1,
                    validator: (val){
                      if ( val!.isEmpty){
                        return 'field required';
                      }
                    },
                    controller: passctrl,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            visible1=!visible1;
                            print(visible1);
                          });
                        }, icon:(visible1)?Icon(Icons.visibility_off, color: Colors.black,):Icon(Icons.visibility,color: Colors.black,)),

                        filled: true,
                        fillColor: Color(0xffDCDADA),
                        hintText: ' Password',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,

                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.all( 10),
                  child: TextFormField(
                    validator: (val){
                      if ( val!.isEmpty){
                        return 'field required';
                      }
                      return null;
                    },
                    controller: cpassctrl,
                    obscureText: visible,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            visible=!visible;
                            print(visible);
                          });
                        }, icon:(visible)?Icon(Icons.visibility_off, color: Colors.black,):Icon(Icons.visibility,color: Colors.black,)),

                        filled: true,
                        fillColor: Color(0xffDCDADA),
                        hintText: ' Confirm password',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,

                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            backgroundColor: Color(0xff283673)),
                        onPressed: (){
                          print(unamectrl.text);
                          if (formkey.currentState!.validate()) {
                            if (passctrl.text==cpassctrl.text) {
                              sendData();
                            }
                            else
                            {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password missmatch')));
                            }
                          }
                        }, child: Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Plogin()));

                    }, child: Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),))
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
