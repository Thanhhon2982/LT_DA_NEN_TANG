import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recomends_plant.dart';
import 'title_with_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
