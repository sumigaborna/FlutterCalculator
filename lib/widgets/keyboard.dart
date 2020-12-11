import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:neomorphic_calculator/constants.dart';

class KeyBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: KeyboardTile(
                            tileText: 'C',
                            tileColor: AppColors.black,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '%',
                            tileColor: AppColors.black,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '<-',
                            tileColor: AppColors.black,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '/',
                            tileColor: AppColors.black,
                            onPressed: () {})),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: KeyboardTile(
                            tileText: '7',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '8',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '9',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: 'X',
                            tileColor: AppColors.black,
                            onPressed: () {})),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: KeyboardTile(
                            tileText: '4',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '5',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '6',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '-',
                            tileColor: AppColors.black,
                            onPressed: () {})),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: KeyboardTile(
                            tileText: '1',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '2',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '3',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '+',
                            tileColor: AppColors.black,
                            onPressed: () {})),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: KeyboardTile(
                            tileText: '00',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '0',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: ',',
                            tileColor: AppColors.greyMystic,
                            onPressed: () {})),
                    Expanded(
                        child: KeyboardTile(
                            tileText: '=',
                            tileColor: AppColors.black,
                            onPressed: () {})),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KeyboardTile extends StatelessWidget {
  final String tileText;
  final Color tileColor;
  final Function onPressed;

  KeyboardTile({this.tileText, this.tileColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: RaisedButton(
        elevation: 10.0,
        color: tileColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Text(
          tileText,
          style: TextStyle(
              color: tileColor == AppColors.greyMystic
                  ? Colors.black
                  : Colors.white),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
