import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.ac_unit,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.purple,
            icon: Icons.cloud,
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.red,
            icon: Icons.shop,
            text: 'Shop',
          ),
          _SingleCard(
            color: Colors.blue,
            icon: Icons.movie,
            text: 'Entertaiment',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.yellow,
            icon: Icons.access_alarms,
            text: 'Alarm',
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.account_box_rounded,
            text: 'Account',
          ),
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromARGB(62, 66, 107, 07),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundColor: this.color,
                    child: Icon(this.icon, size: 25, color: Colors.white),
                    radius: 30),
                SizedBox(height: 30),
                Text(this.text,
                    style: TextStyle(color: this.color, fontSize: 18))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
