import 'package:bfa_turismo/src/componets/liquid_pages.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: liquidPages,
        fullTransitionValue: 800,
        enableLoop: true,
        positionSlideIcon: 0.8,
        waveType: WaveType.liquidReveal, //tipos
        onPageChangeCallback: (page) => pageChangeCallback(page),
        currentUpdateTypeCallback: (updateType) =>
            updateTypeCallback(updateType),
      ),
    );
  }

  pageChangeCallback(int page) {
    print(page);
  }

  updateTypeCallback(UpdateType updateType) {
    print(updateType);
  }
}
