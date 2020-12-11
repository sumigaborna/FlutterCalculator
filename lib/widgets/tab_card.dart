import 'package:flutter/material.dart';
import 'package:neomorphic_calculator/constants.dart';

class TabCard extends StatelessWidget {
  final String tabName;
  final Function onPressed;

  TabCard({this.tabName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: RaisedButton(
        color: AppColors.greyMystic,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Text(
            tabName,
            style: kTabTextStyle,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
