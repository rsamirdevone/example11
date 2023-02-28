import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatelessWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/11.png')
              )
            ),
          ),
          Text('Nimadir nimadir',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
          ),
          Text('Ha Ha',
          style: TextStyle(
            color: Colors.grey.shade200,
            fontSize: 14
          ),
          )
        ],
      ),
    );
  }
}
