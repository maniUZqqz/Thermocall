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
              child: Row(
                children: [
                  Container(
                    child: Image.asset(''),
                      height: 40,
                  ),
                  Column(

                  )
                ],
              ),
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
