import 'package:flutter/material.dart';
import './dummy_data.dart';
import './subjects_screen.dart';

class HomePageScreen extends StatelessWidget {
  static const routeName = '/home-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: InkWell(
        onTap: () {},
        child: DUMMY_DATA
            .map(
              (subData) => SubjectsScreen(
                subData.subjects,
                subData.imageURL,
              ),
            )
            .toList(),
      ),
    );
  }
}
