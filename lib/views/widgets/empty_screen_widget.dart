import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:note_app/res/assets.dart';

class EmptyScreenWidget extends StatelessWidget {
  const EmptyScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(AnimationAssets.empty_animation),
        const Text('Things looks empty here. Tap + to start'),
      ],
    );
  }
}
