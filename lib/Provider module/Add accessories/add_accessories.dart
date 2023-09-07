import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../user_module/Connection/connect.dart';
class add_accessories extends StatefulWidget {
  const add_accessories({super.key});

  @override
  State<add_accessories> createState() => _add_accessoriesState();
}

class _add_accessoriesState extends State<add_accessories> {
  TextEditingController pname=TextEditingController();
  TextEditingController brandname=TextEditingController();
  TextEditingController discptn=TextEditingController();
  TextEditingController discount=TextEditingController();
  TextEditingController offerprice=TextEditingController();
  TextEditingController price=TextEditingController();
  List<XFile> selectedImage = [];
  String _selectedItem = 'Car';
  List<String> _items = ['Car', 'Bike',];
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
    print(pname.text);
    print(_selectedItem);
    print(brandname.text);
    print(discptn.text);
    print(discount.text);
    print(offerprice.text);
    print(price.text);
  



    var uri = Uri.parse("${Con.url}/Provider module/add_accessories.php");

    var request = http.MultipartRequest("POST",uri);
    request.fields['product_name'] = pname.text;
    request.fields['brand_name'] = brandname.text;
    request.fields['type'] = _selectedItem;
    request.fields['discription'] = discptn.text;
    request.fields['offer_price'] = offerprice.text.toString();
    request.fields['discount'] = discount.text.toString();
    request.fields['price'] = price.text.toString();

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
        title: Text('Add Accessories',style: TextStyle(color: Colors.black45),),
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
                  controller: pname,
                  decoration: InputDecoration(
                    hintText: 'Prodcut Name',
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
                        child: Text(value,style: TextStyle(color: Colors.black,fontSize: 18),),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: TextFormField(
                  controller: discptn,
                  maxLines: 8 ,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Discription....',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black26,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 140,
                    child: TextFormField(
                      controller: price,
                      decoration: InputDecoration(
                        hintText: 'Price',
                        prefixIcon: Icon(Icons.attach_money_rounded),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    child: TextFormField(
                      controller: discount,
                      decoration: InputDecoration(
                        hintText: 'Discount',
                        prefixIcon: Icon(Icons.percent),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: offerprice,
                  decoration: InputDecoration(
                    hintText: 'Offer Price',
                    prefixIcon: Icon(Icons.attach_money_rounded),
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
                            backgroundColor: Colors.green.shade400,
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
