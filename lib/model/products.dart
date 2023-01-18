// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter_lab_4/entity/Shop.dart';
import 'package:flutter_lab_4/screen/second_screen.dart';
import 'package:get/get.dart';

GridView products(data) {
  Shop items = data.data;
  return GridView.builder(
    physics: ScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 1 / 1.65,
    ),
    itemCount: items.per_page,
    itemBuilder: (context, index) {
      return Card(
        elevation: 0,
        margin: EdgeInsets.all(0),
        child: Container(
          padding: EdgeInsets.all(6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (() =>
                    Get.to(SecondScreen(items, index))), // SecondScreen
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(3.0),
                          child: Image.network(
                            items.results![index].main_image.toString(),
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                height: 25,
                                width: 25,
                                child: Center(
                                  child: Icon(
                                    Icons.star_border_rounded,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(items.results![index].name.toString()),
                    Text(
                      items.results![index].category!.title.toString(),
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "\$${items.results![index].price}",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 197, 105),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
