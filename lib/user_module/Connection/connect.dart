class Con{
  static const url='http://192.168.1.42/autoprohub/';
 }
//
// // import 'dart:convert';
// // import 'package:http/http.dart';
// import 'package:flutter/material.dart';
// //
// // import '../SharedPreference Use/sharedPrefUse.dart';
// // import '../connection/connect.dart';
//
// class ShoppingNotification extends StatefulWidget {
//   const ShoppingNotification({super.key});
//
//   @override
//   State<ShoppingNotification> createState() => _ShoppingNotificationState();
// }
//
// class _ShoppingNotificationState extends State<ShoppingNotification> {
//   var flag = 0;
//   var rqid;
//   var lgid;
//
//   @override
//   void initState() {
//     super.initState();
//     myLogin();
//     getData();
//   }
//   Future<void> _refresh() async {
//     // Simulate a delay for fetching new data
//     await Future.delayed(Duration(seconds: 2));
//     setState(() {});
//   }
//   Future<List<dynamic>> getData() async {
//     var response = await post(
//       Uri.parse('${Con.url}confirmedProductOrderNotifi.php'),
//       body: {'login_id': lgid.toString()},
//     );
//     print(response);
//     var responseData = jsonDecode(response.body);
//     var res2 = responseData[0]['result'];
//     res2 == "success" ? flag = 1 : flag = 0;
//     // if (flag == 1) {
//     //   lgid = responseData[0]['login_id'];
//     // }
//     print(responseData);
//     return responseData;
//   }
//
//   Future<void> myLogin() async {
//     lgid = await getSavedData();
//     print('loginid: $lgid');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Notifications'),
//         ),
//         body: FutureBuilder<List<dynamic>>(
//         future: () async {
//       await myLogin(); // Call myLogin to get the login id before calling getData
//       return getData(); // Now call getData after getting the login id
//     }(),
//     builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//     return Center(
//     child: CircularProgressIndicator(),
//     );
//     }
//     if (snapshot.hasError) {
//     print('Error: ${snapshot.error}');
//     return Center(
//     child: Text('Error occurred'),
//     );
//     }
//     if (!snapshot.hasData || snapshot.data == null) {
//     return Center(
//     child: Text('No Data..'),
//     );
//     }
//     if (flag == 0) {
//     return Center(child: Text('Nothing to show'));
//     }
//     return SizedBox(
//     child: Container(
//     height: MediaQuery.of(context).size.height,
//     child: RefreshIndicator(
//     onRefresh:() => _refresh(),
//     child: ListView.builder(
//     itemCount: snapshot.data!.length,
//     itemBuilder: (context, index) {
//     return Dismissible(
//     key: Key(snapshot.data![index]['order_id'].toString()),
//     direction: DismissDirection.endToStart,
//     background: Container(
//     color: Colors.red,
//     child: Align(
//     alignment: Alignment.centerRight,
//     child: Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Icon(
//     Icons.delete,
//     color: Colors.white,
//     ),
//     ),
//     ),
//     ),
//     onDismissed: (direction) {
//     // Handle dismiss action here
//     // For example, you can remove the item from the list
//     setState(() {
//     snapshot.data!.removeAt(index);
//     });
//     },
//     child: Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Card(
//     elevation: 30,
//     shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(10.0), // Set rounded border