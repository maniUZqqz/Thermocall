import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thermocall/home/view/more_vert.dart';
import 'add_item.dart';
import 'item.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});
  @override
  State<HomeApp> createState() => _HomeAppState();
}
class _HomeAppState extends State<HomeApp> {

  int _currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 105
              ),
              child: Text(
                  "ThermoCall",
                  style: TextStyle(fontSize: 30),
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () {
                  MoreVert();
                },
                icon: Icon(
              Icons.more_vert,
              size: 35,
            )
            )
          ],
        )
      ),
      body:Container(
        child: Column(
          children: [
            Item(
                circleColor: Color(0xFFFF2D1D),
                backGrundColor: Color(0xFFFF3D3D),
                textColor: Colors.white,
                name: "Freezer name",
                time: "Last Updated 6:25 pm",
                temperature: "-60",
                maxTemperature: "-65",
                minTemperature: "-50",
              ),
            Item(
              circleColor: Color(0xFFFFFFFF),
              backGrundColor: Color(0xBEBEBE),
              textColor: Colors.black,
//              textColor: Color(0x686868),
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
            ),
            Item(
              circleColor: Color(0xFFFF2D1D),
              backGrundColor: Color(0xFFFF3D3D),
              textColor: Colors.white,
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
            ),
            Item(
              circleColor: Color(0xFFFF2D1D),
              backGrundColor: Color(0xFFFF3D3D),
              textColor: Colors.white,
              name: "Freezer name",
              time: "Last Updated 6:25 pm",
              temperature: "-60",
              maxTemperature: "-65",
              minTemperature: "-50",
            ),
            Spacer(),
            AddItem()
          ],
        ),
        padding: EdgeInsets.all(10),
      ),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,
         iconSize: 35,
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.home_outlined),
             label: ""
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.person_outline),
             label: ""
           )
         ],
         onTap: (index) {
           setState(() {
             _currentIndex = index;
           });
         },
       )
    );
  }
}
