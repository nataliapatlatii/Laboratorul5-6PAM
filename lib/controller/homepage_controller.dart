// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter_lab_4/entity/Shop.dart';

// class Model {
//   String name_;

//   Model({
//     required this.name_,
//   });
// }

// class HomePageController extends GetxController {
//   List<Shop> list = [];
//   ScrollController controller = ScrollController();
//   int listLength = 6;

//   void onInit() {
//     generateList();
//     addItems();
//     super.onInit();
//   }

//   addItems() async {
//     controller.addListener(() {
//       if (controller.position.maxScrollExtent == controller.position.pixels) {
//         for (int i = 0; i < 2; i++) {
//           listLength++;
//           list.add(Shop());
//           // list.add(Model(name: (listLength).toString()));
//           update();
//         }
//       }
//     });
//   }

//   generateList() {
//     list = List.generate(
//         listLength, (index) => Model(name: (index + 1).toString()));
//   }
// }
