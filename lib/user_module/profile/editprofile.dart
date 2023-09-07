import 'package:autoprohub/navbar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';
class editprofile extends StatefulWidget {
  const editprofile({super.key});

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            child: Text('Edit Profile',style: TextStyle(fontSize: 22),),
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(left: 65,top: 10),
            child: TextButton(onPressed: (){}, child: Text('Save',style: TextStyle(color: Colors.black,fontSize: 20),)),
          )

          ],

        ),
      ),
      body: Container(
        height:  MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 7,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 60,
                  child: ClipOval(child: Image(image: AssetImage('assets/home/s.png'))
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Mohammed Shaheen VP',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              ),
              // IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo_rounded,color: Colors.black,)),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: Color(0xffD9D9D9)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Full Name'),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                    ),
                  ),
                ),
              ),
              Stack(
                children:[ Padding(
                  padding: const EdgeInsets.only(right: 200,left: 10,top: 4),
                  child: Container(
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // color: Color(0xffD9D9D9)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text('DOB'),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                      ),
                    ),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 230,top: 4),
                    child: Container(
                      width: 180,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // color: Color(0xffD9D9D9)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text('Gender'),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                        ),
                      ),
                    ),
                  ),
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: Color(0xffD9D9D9)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Address'),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                    ),
                  ),
                ),
              ),
              Stack(
                  children:[ Padding(
                    padding: const EdgeInsets.only(right: 200,left: 10,top: 4),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // color: Color(0xffD9D9D9)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text('City'),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                        ),
                      ),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8,left: 230,top: 4),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            // color: Color(0xffD9D9D9)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            label: Text('Pincode'),
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                          ),
                        ),
                      ),
                    ),
                  ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: Color(0xffD9D9D9)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('E-mail'),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: Color(0xffD9D9D9)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Phone Number'),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                    ),
                  ),
                ),
              ),
            SizedBox(height: 10,),








            ],
          ),
        ),
      ),

    );
  }
}
