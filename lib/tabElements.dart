import 'package:flutter/material.dart';
import 'package:potatotechapp/tabs/news.dart';

class TabbedElement extends StatefulWidget {
  const TabbedElement({super.key});

  @override
  State<TabbedElement> createState() => _TabbedElementState();
}

class _TabbedElementState extends State<TabbedElement> {
  @override

  






  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        NewsSection(),
        Icon(Icons.directions_transit),
        Icon(Icons.play_circle),
      ],
    );
  }
}
