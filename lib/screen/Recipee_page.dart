// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/Firebase/Detail_from_Firebase.dart';
import 'package:image_from_firebase_public/Firebase/firebase_extractor.dart';

import '../Firebase/New_Firebase_extractoe.dart';
import '../constanst/constanst.dart';

class Recipe_Page extends StatefulWidget {
  final String Img_URL;
  final String foodname_text;
  final String Cuisines;
  Recipe_Page(
      {required this.Img_URL,
      required this.foodname_text,
      required this.Cuisines});
  @override
  State<Recipe_Page> createState() => _Recipe_PageState();
}

class _Recipe_PageState extends State<Recipe_Page> {
  int _selectedtab = 1;

  @override
  Widget build(BuildContext context) {
    double recipepage_photoheight = ratio_height(context, 200); //200;
    String foodname_text = widget.foodname_text;
    String Img_URL = widget.Img_URL;
    String Cuisines = widget.Cuisines;
    double total_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: null,
      body: SafeArea(
          child: Container(
        height: total_height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "image/background2.png",
              ),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: total_height * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                  height: ratio_height(context, 40), //40
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFF6433)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                            Expanded(child: Container()),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  height: ratio_height(context, 40), //40
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFF6433)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.favorite,
                                      size: 25,
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Stack(
                        children: [
                          Container(
                            height: recipepage_photoheight,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(33)),
                                color: Colors.transparent,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(4, 7),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  )
                                ],
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      Img_URL,
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                              height: recipepage_photoheight,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(33)),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0X00FFFFFF),
                                        Color(0xD9FF3D00)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter))),
                          SizedBox(
                            height: recipepage_photoheight,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  foodname_text,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 29,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Container(
                            height: ratio_height(context, 35), //35,
                            width: ratio_width(context, 110), //110,
                            decoration: BoxDecoration(
                                color: _selectedtab == 1
                                    ? Color(0xffFF6433)
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Center(
                                child: Text("Ingredeint",
                                    style: _selectedtab == 1
                                        ? TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white)
                                        : TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xffFF6433)))),
                          ),
                          onTap: () {
                            setState(() {
                              _selectedtab = 1;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            height: 35,
                            width: 110,
                            decoration: BoxDecoration(
                                color: _selectedtab == 2
                                    ? Color(0xffFF6433)
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Center(
                                child: Text("Steps",
                                    style: _selectedtab == 2
                                        ? TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white)
                                        : TextStyle(
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xffFF6433)))),
                          ),
                          onTap: () {
                            setState(() {
                              _selectedtab = 2;
                            });
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                height: total_height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "9 item",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff752A00)),
                      ),
                    ),
                    SizedBox(
                        height: total_height * 0.44,
                        child: _selectedtab == 1
                            ? new_firebase_extractor(
                                selection: 0,
                                foodlist_s: foodname_text,
                                foodtype_f: Cuisines)

                            // ? Listtile_recipe(
                            //     texttt: 'ingredient',
                            //   )
                            : new_firebase_extractor(
                                selection: 1,
                                foodlist_s: foodname_text,
                                foodtype_f: Cuisines))
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
