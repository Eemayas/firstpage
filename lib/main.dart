import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:image_from_firebase_public/constanst/constanst.dart';
import 'package:image_from_firebase_public/screen/Profile_Page.dart';
import 'package:image_from_firebase_public/screen/Starting_Page3.dart';
import '/screen/listpage/italian.dart';
import '/screen/listpage/japnese.dart';
import '/screen/listpage/korean.dart';
import '/screen/listpage/subcontinental.dart';
import '/screen/listpage/thai.dart';
import '/screen/listpage/turkish.dart';
import 'screen/oldpages/O_profile_page.dart';
import 'screen/Firstpage_Food_Page.dart';
import 'screen/oldpages/O_second_page_foodlist.dart';
import 'screen/SignIn_Page.dart';
import 'screen/SignUp_Page.dart';
import 'screen/Starting_Page1.dart';
import 'dummy/dataentry_page.dart';
import 'dummy/foodlist.dart';
import 'screen/oldpages/O_First_page_foodlist.dart';
import 'dummy/dataentry.dart';
import 'screen/Secondpage_Food_Page.dart';

import 'screen/listpage/chinese.dart';
import 'screen/listpage/french.dart';
import 'screen/Starting_Page2.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseDatabase databasee;
  databasee = FirebaseDatabase.instance;
  databasee.setPersistenceEnabled(true);
  // databasee.setPersistenceCacheSizeBytes(100000000);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: Starting_Page_1.ID, //Profile_page.ID, // "tryyyyyyy",
      // Firstpage_food.ID, // //Firstpage_foodtype.ID,
      routes: {
        for (int i = 0; i < secondpagelist.length; i++)
          secondpagelist[i]: (context) =>
              new secondpage_foodlist(Foodtype_name: secondpagelist[i]),

        profile_page.ID: (context) => profile_page(),
        foodlist.ID: (context) => foodlist(),
        Firstpage_foodtype.ID: (context) => Firstpage_foodtype(),

        // "recipeepage.ID": (context) => recipee_page(foodtype: '',),
        french.ID: (context) => french(),
        chinese.ID: (context) => chinese(),
        italian.ID: (context) => italian(),
        japanese.ID: (context) => japanese(),
        korean.ID: (context) => korean(),
        subcontiental.ID: (context) => subcontiental(),
        thai.ID: (context) => thai(),
        turkish.ID: (context) => turkish(),

        "datata": (context) => dataentrypage(),
        "data": (context) => dataentry(),

        Starting_Page_1.ID: (context) => Starting_Page_1(),
        Starting_Page_2.ID: (context) => Starting_Page_2(),
        Starting_Page_3.ID: (context) => Starting_Page_3(),
        Sign_In.ID: (context) => Sign_In(),
        Sign_Up.ID: (context) => Sign_Up(),
        Profile_Page.ID: (context) => Profile_Page(),
        Firstpage_Food_Page.ID: (context) => Firstpage_Food_Page(),
        // Secondpage_food.ID: (context) => Secondpage_food(
        //       FoodType: 'AMERICAN',
        //     ),
        // for (int i = 0; i < secondpagelist.length; i++)
        //   secondpagelist[i] + "try": (context) =>
        //       Secondpage_food(FoodType: secondpagelist[i]),
      },
    );
  }
}



































 //   foodtype_name_list.nAmerican: (context) => new secondpage_foodlist(
        //       Foodtype_name: foodtype_name_list.nAmerican),
        // foodtype_name_list.nBritish: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nBritish),
        // foodtype_name_list.nCaribbean: (context) => new secondpage_foodlist(
        //     Foodtype_name: foodtype_name_list.nCaribbean),
        // foodtype_name_list.nChinese: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nChinese),
        // foodtype_name_list.nFrench: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nFrench),
        // foodtype_name_list.nGreek: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nGreek),
        // foodtype_name_list.nIndian: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nIndian),
        // foodtype_name_list.nItalian: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nItalian),
        // foodtype_name_list.nJapnese: (context) =>
        //     new secondpage_foodlist(Foodtype_name: foodtype_name_list.nJapnese),