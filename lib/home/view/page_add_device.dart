import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thermocall/login/view/button.dart';
import 'buttom_add_device.dart';
import 'more_vert.dart';
// class AddDevice extends StatefulWidget {
//
//   @override
//   State<AddDevice> createState() => _AddDeviceState();
// }
//
// class _AddDeviceState extends State<AddDevice> {
//   @override
//   Widget build(BuildContext context) {
//     return PageDevice(
//       id: "12345yhbvcxz",
//       dataUpdated: "Updated 1 minutes ago",
//       minTemperature: "-50",
//       maxTemperature: "-90",
//       temperature: "-60",
//
//     );
//   }
// }
class PageDevice extends StatefulWidget {

  String id ;
  String dataUpdated ;
  String temperature ;
  String minTemperature ;
  String maxTemperature ;

  PageDevice({
    required this.id,
    required this.dataUpdated,
    required this.temperature,
    required this.minTemperature ,
    required this.maxTemperature ,
  });

  @override
  State<PageDevice> createState() => _PageDeviceState();
}

class _PageDeviceState extends State<PageDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              const Center(
                child: Text(
                  "Setup",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Spacer(),
              MoreVert()
            ],
          )
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text('ID:'),
                  Text(widget.id)
                ],
              ),
              Padding(
                  child: Row(
                    children: [
                      Text("Updeted : "),
                      Text(widget.dataUpdated)
                    ],
                  ),
                  padding: EdgeInsets.only(right: 195,top: 8,bottom: 50)
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText:  "Bio Call",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              Padding(
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText:  "The freezer is iocated in the basement room#",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(top: 40,bottom: 30)
              ),
              Text(
                  'Set Temperature Range'
              ),
              Padding(
                  child: Row(
                    children: [
                      Text(
                        widget.minTemperature,
                        style: TextStyle(
                            fontSize: 30
                        ),
                      ),
                      Padding(
                        child:Container(
                          child:  Text(
                            widget.temperature,
                            style: TextStyle(
                                fontSize: 30
                            ),
                          ),
                          width: 80,
                          height: 80,
                          padding: EdgeInsets.only(left: 15,top: 15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffEAF5FF)
                          ),
                        ) ,
                        padding:EdgeInsets.only(right: 40,left: 50),
                      ),
                      Text(
                        widget.maxTemperature,
                        style: TextStyle(
                            fontSize: 30
                        ),
                      )
                    ],
                  ),
                  padding: EdgeInsets.only(top: 60,left: 50,bottom: 160)
              ),
//            Slider()
//            const Spacer(),
              Row(
                children: [
                  Padding(
                      child: InkWell(
                        child: ButtomAdd(
                          textColor: Color(0xff3C71A0),
                          buttonColor: Colors.white,
                          textInButton: "Cancel",
                        ),
                        onTap: (){},
                      ),
                      padding: EdgeInsets.only(right: 15,left: 38)
                  ),
                  InkWell(
                    child: ButtomAdd(
                      textColor: Colors.white,
                      buttonColor: Color(0xff3C71A0),
                      textInButton: "Save",
                    ),
                    onTap: (){},
                  )
                ],
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          padding: EdgeInsets.only(
              left: 23,
              right: 23,
              bottom: 40
          ),
        ),
      )
    );
  }
}
