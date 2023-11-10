// import 'package:al_hadith_app/helper/db_helper.dart';
// import 'package:flutter/material.dart';
//
// import '../helper/item_helper.dart';
// import '../model/book_model.dart';
// import '../widget/slider_widget.dart';
//
// class SliderPage extends StatefulWidget {
//   const SliderPage({Key? key}) : super(key: key);
//
//   @override
//   State<SliderPage> createState() => _SliderPageState();
// }
//
// class _SliderPageState extends State<SliderPage> {
//   LocalDatabase dbHelper=LocalDatabase();
//   List<BooksModel>? data;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SliderScreen(),
//               SizedBox(height: 10,),
//               ElevatedButton(onPressed: (){
//
//               }, child: Text("clic")),
//
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
