import 'package:flutter/material.dart';
import 'package:fourth_project/widgets/background.dart';
import 'package:fourth_project/widgets/buttom_navigation.dart';
import 'package:fourth_project/widgets/card_table.dart';
import 'package:fourth_project/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background
          Background(),
          //HomeBody
          _HomeBody()
        ],
      ),
      bottomNavigationBar: ButtomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        //Titulos
        PageTitle(),
        //Card Table

        CardTable(),
      ]),
    );
  }
}
