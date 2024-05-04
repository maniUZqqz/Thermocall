import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thermocall/home/view/page_add_device.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff002039),
        shape: CircleBorder(),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PageDevice(
                  temperature: "-60",
                  maxTemperature: "-65",
                  minTemperature: "-50",
                  id: "drtyuikbvc",
                  dataUpdated: "1 minutes",
                )
            )
        );
      },
    );
  }
}
