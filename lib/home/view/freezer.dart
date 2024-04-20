import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Freezer extends StatefulWidget {

  bool isError ;




  String name ;
  String time ;
  String temperature ;
  String minTemperature ;
  String maxTemperature ;


  Freezer({
    required this.name ,
    required this.time ,
    required this.temperature,
    required this.minTemperature ,
    required this.maxTemperature ,
    required this.isError
  });

  @override
  State<Freezer> createState() => _FreezerState();
}

class _FreezerState extends State<Freezer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Material(
          child: Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                                color: widget.isError ? Colors.white : Colors.black,
                                fontSize: 25
                            ),),
                          Text(
                              widget.time,
                              style: TextStyle(
                                  color: widget.isError ? Colors.white : Color(0xff686868)
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Text(
                    widget.minTemperature,
                    style: TextStyle(
                        color: widget.isError ? Colors.white : Color(0xff686868)
                    )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    child:Center(
                      child: Text(
                          widget.temperature,
                          style: TextStyle(
                              color: widget.isError ? Colors.white : Colors.black,
                          )
                      ) ,
                    ),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.isError ? Color(0xFFFF2D1D) : Colors.white
                    ),
                  ),
                ),
                Text(widget.maxTemperature,
                    style: TextStyle(
                        color: widget.isError ? Colors.white : Color(0xff686868)
                    )
                )
              ],
            ),
            padding: EdgeInsets.only(
              bottom: 10,
              top: 10,
              right: 5,
              left: 5,
            ),
            height: 100,
          ),
          borderRadius: BorderRadius.circular(8),
          color: widget.isError ? Color(0xFFFF3D3D) : Color(0xfff1f9ff)
        ),
    );
  }
}
