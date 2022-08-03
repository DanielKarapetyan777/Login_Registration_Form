// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  UserPage({Key? key, required this.ferstname, required this.lastname})
      : super(key: key);
  String ferstname;
  String lastname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              'Welcome $ferstname $lastname',
              style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromRGBO(59, 158, 146, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
