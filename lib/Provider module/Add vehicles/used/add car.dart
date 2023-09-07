import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../user_module/Connection/connect.dart';
class add_usedcar extends StatefulWidget {
   add_usedcar({super.key,required this.type});
  var type;

  @override
  State<add_usedcar> createState() => _add_usedcarState();
}

class _add_usedcarState extends State<add_usedcar> {
  TextEditingController vnamectrl=TextEditingController();
  TextEditingController brandname=TextEditingController();
  TextEditingController cc=TextEditingController();
  TextEditingController milege=TextEditingController();
  TextEditingController kmdriven=TextEditingController();
  TextEditingController vyear=TextEditingController();
  TextEditingController price=TextEditingController();
  List<XFile> selectedImage = [];
  String _selectedItem = 'Petrol';
  List<String> _items = ['Petrol', 'Deisel', 'Hybrid', 'Electric','CNG',];
  String _selectedsegment = 'Sedan';
  List<String> segment = ['Sedan', 'Suv', 'Compact Suv', 'Hatchback',];
  PageController pageController = PageController(initialPage: 0);

  File? _img;
  final picker = ImagePicker();

  Future chooseimage() async{
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _img = File(pickedImage!.path);
    });
  }
  Future sendData(File imageFile) async {
    print(vnamectrl.text);
    print(_selectedItem);
    print(brandname.text);
    print(milege.text);
    print(cc.text);
    print(kmdriven.text);
    print(vyear.text);
    print(price.text);
    print(_selectedsegment);
    print(widget.type);



var uri = Uri.parse("${Con.url}/Provider module/add_usedcar.php");

var request = http.MultipartRequest("POST",uri);
request.fields['vehicle_name'] = vnamectrl.text;
request.fields['brand_name'] = brandname.text;
request.fields['fuel'] = _selectedItem;
request.fields['segment'] = _selectedsegment;
request.fields['milege'] = milege.text.toString();
request.fields['enginecc'] = cc.text.toString();
request.fields['vehicleyear'] = vyear.text.toString();
request.fields['kmdriven'] = kmdriven.text.toString();
request.fields['price'] = price.text.toString();
request.fields['type'] = widget.type;

var pic = await await http.MultipartFile.fromPath("img", imageFile.path);
 request.files.add(pic);

 var response = await request.send();




  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text('Add Car',style: TextStyle(color: Colors.black45),),
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 250,
                  width: 350,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black26
                ),
                  child:
                  _img == null?
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){
                        chooseimage();
                      },
                          icon: Icon(Icons.add_a_photo_outlined,size: 40,)),
                      Text('Add Image')
                    ],
                  ):
                     Image(image: FileImage(_img!),fit: BoxFit.cover,)

                ),
              ),
              // Row(
              //   children: [
              //     SizedBox(width: 8,),
              //     Container(
              //       height: 230,
              //       width: 220,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(15),
              //         color: Colors.blue
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Column(
              //         children: [
              //           Container(
              //             height: 110,
              //             width: 150,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(15),
              //                 color: Colors.blue
              //             ),
              //           ),
              //           SizedBox(height: 8,),
              //           Container(
              //             height: 110,
              //             width: 150,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(15),
              //                 color: Colors.blue
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     SizedBox(width: 8,),
              //
              //     Container(
              //       height: 110,
              //       width: 120,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(15),
              //           color: Colors.blue
              //       ),
              //     ),
              //     SizedBox(width: 8,),
              //
              //     Container(
              //       height: 110,
              //       width: 120,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(15),
              //           color: Colors.blue
              //       ),
              //     ),
              //     SizedBox(width: 8,),
              //     Container(
              //       height: 110,
              //       width: 120,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(15),
              //           color: Colors.blue
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: 20,),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text('Vehicle Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              // ),
              SizedBox(
                width: 340,
                child: TextFormField(
                  controller: vnamectrl,
                  decoration: InputDecoration(
                    hintText: 'Vehicle Name',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 340,
                child: TextFormField(
                  controller: brandname,
                  decoration: InputDecoration(
                    hintText: 'Brand Name',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              // SizedBox(
              //   width: 340,
              //   child: TextFormField(
              //     controller: fueltype,
              //     decoration: InputDecoration(
              //       hintText: 'Fuel type',
              //       enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              //       focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              //     ),
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: DropdownButton<String>(
                      value: _selectedItem,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedItem = newValue!;
                        });
                      },
                      dropdownColor: Colors.white, // Change the background color here

                      items: _items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(value,style: TextStyle(color: Colors.black,fontSize: 16),),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Center(
                    child: DropdownButton<String>(
                      value: _selectedsegment,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedsegment = newValue!;
                        });
                      },
                      dropdownColor: Colors.white, // Change the background color here

                      items: segment.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(value,style: TextStyle(color: Colors.black,fontSize: 16),),
                          ),
                        );
                      }).toList(),
                    ),
                  ),


                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 140,
                    child: TextFormField(
                      controller: milege,
                      decoration: InputDecoration(
                        hintText: 'Milege',
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: TextFormField(
                      controller: cc,
                      decoration: InputDecoration(
                        hintText: 'Engine CC',
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),



                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 140,
                    child: TextFormField(
                      controller: vyear,
                      decoration: InputDecoration(
                        hintText: 'Vehicle Year',
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: TextFormField(
                      controller: kmdriven,
                      decoration: InputDecoration(
                        hintText: 'KM Driven',
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),



                ],
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 340,
                child: TextFormField(
                  controller: price,
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.money_dollar),
                    hintText: 'Price',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),

              SizedBox(height: 15,),
               Center(
                 child: Container(
                   height: 50,
                     width: 150,
                     child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xff283673),
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(15))),
                         onPressed: (){
                           sendData(_img!);
                           setState(() {

                           });
                         },
                         child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 18),))),
               ),

              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
