import 'package:flutter/material.dart';
import 'package:flutter_prac1/Screens/add_task.dart';
import 'package:flutter_prac1/Screens/all_task.dart';
import 'package:flutter_prac1/Widgets/button_widget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: "Hello",
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: "\nStart Your Beautiful Day",
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Get.to(() => AddTask(),
                    transition: Transition.fade,
                    duration: Duration(seconds: 1));
              },
              child: ButtonWidget(
                  bgcolor: Colors.teal,
                  text: 'Add Task',
                  textColor: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.to(() => AllTask(),
                    transition: Transition.fade,
                    duration: Duration(seconds: 1));
              },
              child: ButtonWidget(
                  bgcolor: Colors.white,
                  text: 'View All',
                  textColor: Colors.teal),
            ),
            SizedBox(height: 70)
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/car.jpg"),
          ),
        ),
      )),
    );
  }
}
