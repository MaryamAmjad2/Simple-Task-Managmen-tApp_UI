import 'package:flutter/material.dart';
import 'package:flutter_prac1/Widgets/button_widget.dart';
import 'package:flutter_prac1/Widgets/text_widget.dart';
import 'package:get/get.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body: Container(
          padding: (EdgeInsets.only(left: 10, right: 10)),
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/car.jpg"),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                //For the Arrow Back Button
                children: [
                  SizedBox(height: 30),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child:
                          Icon(Icons.arrow_back, size: 35, color: Colors.teal)),
                ],
              ),
              Column(
                children: [
                  TextWidget(
                      nameController: nameController,
                      hinttext: "Add Task",
                      maxlin: 1),
                  SizedBox(
                    height: 20,
                  ),
                  TextWidget(
                      nameController: detailController,
                      hinttext: "Add Task Detail",
                      maxlin: 3),
                  SizedBox(
                    height: 40,
                  ),
                  ButtonWidget(
                      bgcolor: Colors.teal,
                      text: "Add",
                      textColor: Colors.white)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 5),
            ],
          )),
    );
  }
}
