import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: Image(
        image: AssetImage(
          "assets/images/bg_white.png",
        ),
      ),
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Theme.of(context).primaryColorDark,
            Theme.of(context).primaryColor
          ],
          stops: [
            0.0,
            .5,
          ],
        ).createShader(bounds);
      },
      blendMode: BlendMode.srcATop,
    );
  }
}
