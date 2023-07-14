import 'package:flutter/material.dart';
import 'package:flutter_prac1/Widgets/button_widget.dart';
import 'package:flutter_prac1/Widgets/task_widget.dart';
import 'package:get/get.dart';

class AllTask extends StatelessWidget {
  const AllTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mydata = ["Try Hard", "Try Smart"];

    final left = Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.only(left: 20),
      color: Colors.teal.shade200,
      alignment: Alignment.centerLeft,
      child: Icon(
        Icons.edit,
        color: Colors.white,
      ),
    );
    final right = Container(
        color: Colors.red.shade300,
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.only(right: 20),
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ));
    return Scaffold(
      body: Container(
        padding: (EdgeInsets.only(left: 10, right: 10)),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/car.jpg'),
          ),
        ),
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 40),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back, color: Colors.teal, size: 35),
          ),
          Expanded(
              child: Container(
            height: MediaQuery.of(context).size.height / 3,
          )),
          Container(
            padding: (EdgeInsets.only(right: 10)),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home, color: Colors.teal, size: 35),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_circle, color: Colors.teal, size: 35),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.calendar_month, color: Colors.teal, size: 35),
                ),
                Text('2', style: TextStyle(fontSize: 20, color: Colors.teal))
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: mydata.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    background: left,
                    secondaryBackground: right,
                    key: ObjectKey(index),
                    onDismissed: (DismissDirection direction) {},
                    confirmDismiss: (DismissDirection direction) async {
                      if (direction == DismissDirection.startToEnd) {
                        showModalBottomSheet(
                            backgroundColor: Colors.teal.shade50,
                            barrierColor: Colors.transparent,
                            context: context,
                            builder: (_) {
                              return Container(
                                padding: EdgeInsets.all(20),
                                height: 350,
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ButtonWidget(
                                          bgcolor: Colors.white,
                                          text: "View",
                                          textColor: Colors.teal),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ButtonWidget(
                                          bgcolor: Colors.white,
                                          text: "Edit",
                                          textColor: Colors.teal),
                                    ]),
                              );
                            });

                        return false;
                      } else {
                        return Future.delayed(Duration(seconds: 1),
                            () => direction == DismissDirection.endToStart);
                      }
                    },
                    child: Container(
                      margin: (EdgeInsets.only(bottom: 10)),
                      padding: (EdgeInsets.only(left: 20, right: 20)),
                      child: TaskWidget(txt: mydata[index], clr: Colors.teal),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 450,
          )
        ]),
      ),
    );
  }
}
