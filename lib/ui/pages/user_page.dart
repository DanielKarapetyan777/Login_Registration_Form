// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPage extends StatefulWidget {
  UserPage({Key? key, required this.ferstname, required this.lastname})
      : super(key: key);
  String ferstname;
  String lastname;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  Future getFirstName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      widget.ferstname = preferences.getString('firstname')!;
    });
  }

  Future getLastName() async {
    SharedPreferences preferences1 = await SharedPreferences.getInstance();
    setState(() {
      widget.lastname = preferences1.getString('lastname')!;
    });
  }

  Future logOut(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('email');
    Navigator.pushReplacementNamed(
      context,
      '/',
    );
  }

  @override
  void initState() {
    super.initState();
    getFirstName();
    getLastName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            alignment: Alignment.center,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(60, 48),
                  primary: const Color.fromRGBO(59, 158, 146, 1),
                ),
                child: const Text('Sign Out'),
                onPressed: () {
                  logOut(context);
                }),
          ),
        ],
        toolbarHeight: 82,
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      ),
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
            child: Text(
              'Welcome ${widget.ferstname} ${widget.lastname}',
              style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(59, 158, 146, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
