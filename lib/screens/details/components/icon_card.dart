import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.text,
    this.value,
  }) : super(key: key);

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
//      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: new CircularPercentIndicator(
        radius: 39,
        lineWidth: 5.0,
        animation: true,
        percent: value,
        center: new Text(
          text,
          style: new TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 12.0),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.greenAccent,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
