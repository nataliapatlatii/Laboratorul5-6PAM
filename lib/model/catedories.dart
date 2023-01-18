// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter_lab_4/entity/Shop.dart';

ListView catedories(data) {
  Shop items = data.data;
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    itemCount: items.results == null ? 0 : items.results!.length,
    itemBuilder: (context, index) {
      return Column(
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(20, 0, 0, 0),
                    blurRadius: 10,
                    offset: Offset(0, 6),
                  ),
                ],
                // border: Border.all(width: 1),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                height: 50,
                width: 50,
                child: Center(
                  child: Image.network(
                    items.results![index].category!.icon.toString(),
                    width: 35,
                    // height: 20,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 79,
            child: Text(
              items.results![index].category!.title.toString(),
              style: TextStyle(fontSize: 11),
              textAlign: TextAlign.center,
            ),
          )
        ],
      );
    },
  );
}
