import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'add_freezer.dart';
import 'freezer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

  static Route<void> route() {
    return route();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  child: SingleChildScrollView()
      child: SingleChildScrollView(
        child: Column(
          children: [
            Freezer(
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
              isError: false,
            ),
            Freezer(
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
              isError: true,
            ),
            Freezer(
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
              isError: false,
            ),
            Freezer(
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
              isError: false,
            ),
            Freezer(
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
              isError: false,
            ),
            Freezer(
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
              isError: false,
            ),
            Freezer(
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
              isError: false,
            ),
            Freezer(
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
              isError: false,
            ),
            Freezer(
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
              isError: false,
            ),
//          Spacer(),
            AddItem()
          ],
        ),
      ),
      padding: EdgeInsets.all(10),
      color: Colors.white,
    );
  }
}
