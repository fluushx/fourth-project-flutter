import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage(
                'assets/landscape-photography-tips-yosemite-valley-feature.jpeg'),
          ),
          //Title
          Title(),
          //Button Section

          ButtonSection(),

          //Description
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
                'Aliqua qui Lorem do sunt qui id incididunt laborum laboris. Pariatur magna voluptate amet proident deserunt consequat officia in amet occaecat mollit. Do incididunt cillum pariatur sunt laboris tempor commodo. Anim irure sit non ullamco dolore esse voluptate in enim aliquip consequat esse anim. Enim reprehenderit dolor occaecat do mollit occaecat dolor mollit irure consequat esse nulla veniam. Nisi nisi ullamco aliqua id commodo eu aliqua id voluptate.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45))
          ],
        ),
        Expanded(child: Container()),
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text('5'),
      ]),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CusstomButton(
            icon: Icons.call,
            text: 'CALL',
          ),
          CusstomButton(
            icon: Icons.map_sharp,
            text: 'MAP',
          ),
          CusstomButton(
            icon: Icons.share_sharp,
            text: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CusstomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CusstomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        this.icon,
        color: Colors.blue,
        size: 30,
      ),
      Text(this.text, style: TextStyle(color: Colors.blue))
    ]);
  }
}
