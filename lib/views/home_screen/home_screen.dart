import 'package:data_conversion_june/controller/home_screen_controller.dart';
import 'package:data_conversion_june/dummy_db.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    HomeScreenController.convertStuenttoModel();
    HomeScreenController.convertStudentlistModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView.separated(
              itemBuilder: (context, index) => Container(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Text(HomeScreenController.studentModelList[index].name
                            .toString()),
                        Text(HomeScreenController.studentModelList[index].place
                            .toString()),
                        Text(HomeScreenController.studentModelList[index].phone
                            .toString()),
                        Text(HomeScreenController.studentModelList[index].course
                            .toString()),
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemCount: HomeScreenController.studentModelList.length)),
    );
  }
}
