import 'package:flutter/material.dart';
import 'package:neomorphic_calculator/constants.dart';

class Result extends StatelessWidget {
  final String mathFunction;
  final String result;

  Result({this.mathFunction, this.result});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 20.0),
        child: Card(
            color: AppColors.greyMystic,
            elevation: 10.0,
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //function
                  Text(
                    //TODO: REMOVE HARD CODE
                    '130 x 5 + 20 - 15 * 15 * 2 * 125125151 * 1261612 * 130 x 5 + 20 - 15 * 15 * 2 * 125125151 * 1261612* 130 x 5 + 20 - 15 * 15 * 2 * 125125151 * 1261612',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style:
                        TextStyle(fontSize: 20.0, color: Colors.grey.shade600),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  //result
                  Text(
                    //TODO: REMOVE HARD CODE
                    '175291725712579117529172571257911752917257125791175291725712579117529172571257911752917257125791',
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
