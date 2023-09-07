
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../profile/editprofile.dart';
class profile2 extends StatefulWidget {
  const profile2({super.key});

  @override
  State<profile2> createState() => _profile2State();
}

class _profile2State extends State<profile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
       decoration: BoxDecoration(
         color: Colors.black,
         borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
         
       ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/home/s.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mohammed Shaheen VP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                        SizedBox(height: 12,),
                        Text('@sheiinn.n',style: TextStyle(color: Colors.white,),),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22.5,top: 20),
                  child: Container(
                    height: 32,
                    width: 145,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white
                      )
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>editprofile()));
                    }, child: Text('Edit Profile',style: TextStyle(color: Colors.white),)),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.5,top: 20),
                  child: Container(
                    height: 32,
                    width: 145,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(child: TextButton(onPressed: () {  }, child: Text('Share Profile',style: TextStyle(color: Colors.white),)),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('PERSONAL INFORMATION',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Contact Info',style: TextStyle(color: Colors.white,fontSize: 14)),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('E-mail :',style: TextStyle(color: Colors.white,fontSize: 12)),
                  Text('mohammedshaheen109@gmail.com',style: TextStyle(color: Colors.white,fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Address :',style: TextStyle(color: Colors.white,fontSize: 12)),
                  Text('Vattaparambil(H)',style: TextStyle(color: Colors.white,fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Phone :',style: TextStyle(color: Colors.white,fontSize: 12)),
                  Text('9544453993',style: TextStyle(color: Colors.white,fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('DOB :',style: TextStyle(color: Colors.white,fontSize: 12)),
                  Text('12/04/2002',style: TextStyle(color: Colors.white,fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Gender :',style: TextStyle(color: Colors.white,fontSize: 12)),
                  Text('Male',style: TextStyle(color: Colors.white,fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('City :',style: TextStyle(color: Colors.white,fontSize: 12)),
                  Text('Perinthalmanna',style: TextStyle(color: Colors.white,fontSize: 15)),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pin Code :',style: TextStyle(color: Colors.white,fontSize: 12)),
                  Text('679325',style: TextStyle(color: Colors.white,fontSize: 15)),
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
