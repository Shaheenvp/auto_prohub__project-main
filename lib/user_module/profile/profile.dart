
import 'package:autoprohub/user_module/profile/profile2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              // pinned: true,
              centerTitle: false,
              stretch: true,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: Image(image: AssetImage('assets/profile/Screenshot (24).png'),fit: BoxFit.contain,),
              ),
            ),
           SliverList(delegate: SliverChildListDelegate([
             Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               child: profile2(),
             ),
           ]))



         // Container(
         // height: 350,
         // width: MediaQuery.of(context).size.width,
         //
         //       child: Padding(
         //  padding: const EdgeInsets.all(8.0),
         //  child: Column(
         //    children: [
         //      Padding(
         //        padding: const EdgeInsets.only(left: 8.0,right: 8,top: 50),
         //        child: Container(
         //          height: 70,
         //          width: 350,
         //         decoration: BoxDecoration(
         //           borderRadius: BorderRadius.circular(15),
         //           image: DecorationImage(image: AssetImage('assets/profile/Screenshot (24).png'),fit: BoxFit.cover)
         //         ),
         //
         //        ),
         //      ),
         //    ],
         //  ),
         //       ),
         //      ),
         // Padding(
         //   padding: const EdgeInsets.only(top: 200),

         // ),
     ],
        ),
      ),

    );
  }
}
