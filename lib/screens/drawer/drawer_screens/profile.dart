import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: CircleAvatar(
              radius: 65.0,
              backgroundImage: AssetImage('assets/images/11.png'),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.grey[500],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'notifications',
                    style: TextStyle(fontSize: 19, color: Colors.grey[800]),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 40)),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'email notifications',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Icon(Icons.apple)
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 40)),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'push notifications',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  Icon(Icons.apple)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    left: 10,
                  )),
                  Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.grey[500],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Privacy',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 40)),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'private',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  Icon(Icons.apple)
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 40)),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'public',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                  SizedBox(
                    width: 225,
                  ),
                  Icon(Icons.apple)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    left: 10,
                  )),
                  Icon(
                    Icons.feedback,
                    size: 30,
                    color: Colors.grey[500],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'feedback',
                    style: TextStyle(fontSize: 19, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    left: 10,
                  )),
                  Icon(
                    Icons.comments_disabled,
                    size: 30,
                    color: Colors.grey[500],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Terms and condition',
                    style: TextStyle(
                        fontSize: 19, color: Color.fromARGB(255, 18, 2, 2)),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    left: 10,
                  )),
                  Icon(
                    Icons.logout,
                    size: 30,
                    color: Colors.grey[500],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Log out',
                    style: TextStyle(
                        fontSize: 19, color: Color.fromARGB(255, 18, 2, 2)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
