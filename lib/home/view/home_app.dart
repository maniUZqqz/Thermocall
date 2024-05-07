import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thermocall/home/view/more_vert.dart';
import 'package:thermocall/home/view/profile.dart';
import 'add_freezer.dart';
import 'freezer.dart';
import 'home.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});
  @override
  State<HomeApp> createState() => _HomeAppState();
}
class _HomeAppState extends State<HomeApp> {

  int _currentIndex = 0 ;

  var homeList = [
    Home(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Center(
              child: Text(
                  "ThermoCall",
                  style: TextStyle(fontSize: 30),
              ),
            ),
            Spacer(),
            MoreVert(
              popopuOne: PopupMenuItem(
                child:Row(
                  children: [
                    Text(
                      'Celcuis',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    Spacer(),
                    Icon(
                        Icons.abc,
                        color: Colors.white,
                    )
                  ],
                ),
                onTap: () {

                },
              ),
              popopuTwo: PopupMenuItem(
                child:Row(
                  children: [
                    Text(
                      'Fahrenheit',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    Spacer(),
                    Icon(
                        Icons.abc,
                        color: Colors.white,
                    )
                  ],
                ),
                onTap: () {

                },
              ),
              popopuThree: PopupMenuItem(
                child:Row(
                  children: [
                    Text(
                        'Report Issue',
                         style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    Spacer(),
                    Icon(
                        Icons.edit,
                        color: Colors.white,
                    )
                  ],
                ),
                onTap: () {

                },
              ),
            )
          ],
        )
      ),
      body:SingleChildScrollView(
        child: homeList[
        _currentIndex
        ],
      ),
      // body: _currentIndex == 0 ? Home() : Profile(),
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