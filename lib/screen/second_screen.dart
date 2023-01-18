// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_lab_4/entity/Shop.dart';
import 'package:readmore/readmore.dart';

class SecondScreen extends StatelessWidget {
  Shop items;
  int index;

  SecondScreen(this.items, this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              SizedBox(height: 100),
              Container(
                height: 155,
                width: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        (items.results![index].main_image.toString())),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 100,
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                right: 0,
                top: 100,
                child: Container(
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  height: 25,
                  width: 25,
                  child: Center(
                    child: Icon(
                      Icons.star_border_rounded,
                      size: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
          //===================================================================
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items.results![index].name.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black12),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Size"),
                          SizedBox(width: 30),
                          Text(
                            items.results![index].size.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 25),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black12),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Colour"),
                          SizedBox(width: 30),
                          Text(
                            items.results![index].colour.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  "Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                ReadMoreText(
                  items.results![index].details.toString(),
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '\nRead more',
                  trimExpandedText: '\nRead less',
                  moreStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 197, 105),
                  ),
                  lessStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 197, 105),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Reviews",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 197, 105),
                    ),
                  ),
                  child: Text("Write your"),
                ),
                SizedBox(height: 70),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: -5,
                        blurRadius: 20,
                        offset: Offset(0, -10),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 5),
                          Text(
                            "PRICE",
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 153, 153),
                            ),
                          ),
                          Text(
                            "\$ ${items.results![index].price.toString()}",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 197, 105),
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.green),
                        ),
                        child: Text("ADD"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
