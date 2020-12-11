import 'package:flutter/material.dart';
import 'package:neomorphic_calculator/widgets/tab_card.dart';

class NavigationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TabCard(
          tabName: 'Calculator',
          onPressed: () {
            //TODO: open the correct route
          },
        )
      ],
    );
  }
}
