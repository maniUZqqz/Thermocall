import 'package:flutter/cupertino.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
              child: Row(),
              padding: EdgeInsets.only()
          ),
          Container(),
          Padding(
              child: Text(''),
              padding: EdgeInsets.symmetric()
          ),
          Text('')
        ],
      ),
    );
  }
}
