import 'dart:io';
import 'package:http/http.dart'as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../user_module/Connection/connect.dart';
class add_rentbike extends StatefulWidget {
   add_rentbike({super.key,required this.type});
  var type;

  @override
  State<add_rentbike> createState() => _add_rentbikeState();
}

class _add_rentbikeState extends State<add_rentbike> {
  TextEditingController vnamectrl=TextEditingController();
  TextEditingController brandname=TextEditingController();
  TextEditingController price=TextEditingController();

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
    print(brandname.text);


    print(price.text);

    print(widget.type);



    var uri = Uri.parse("${Con.url}/Provider module/add_rentvehicle.php");

    var request = http.MultipartRequest("POST",uri);
    request.fields['vehicle_name'] = vnamectrl.text;
    request.fields['brand_name'] = brandname.text;
    request.fields['price'] = price.text.toString();
    request.fields['type'] = widget.type;

    var pic = await await http.MultipartFile.fromPath("img", imageFile.path);
    request.files.add(pic);

    var response = await request.send();
    print(response.statusCode);




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
        title: Text('Add Bike',style: TextStyle(color: Colors.black45),),
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
                            backgroundColor: Colors.teal,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: (){
                          sendData(_img!);
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
