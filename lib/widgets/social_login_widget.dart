import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SocialLoginWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color color;

  SocialLoginWidget(
      {@required this.iconData, @required this.text, @required this.color});

  @override
  Widget build(BuildContext context) {
    var radius = Radius.circular(10);
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: color.withOpacity(.5), blurRadius: 10, offset: Offset(0, 5)),
      ]),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: radius,
                bottomLeft: radius,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: color.withOpacity(.9),
                  borderRadius: BorderRadius.only(
                    topRight: radius,
                    bottomRight: radius,
                  ),
                ),
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w600),
                )),
          ),
        ],
      ),
    );
  }
}
