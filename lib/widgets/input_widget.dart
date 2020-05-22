import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final IconData iconData;
  final String hint;
  final Widget rightWidget;

  @protected
  static final Color color = Color.fromRGBO(208, 219, 224, 1);

  InputWidget({@required this.iconData, @required this.hint, this.rightWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 1, color: color)),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              iconData,
              color: color,
            ),
          ),
          Container(
            width: 1,
            color: color,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  hintText: hint,
                  hintStyle: TextStyle(color: color)),
            ),
          ),
          rightWidget != null ? rightWidget : Container()
        ],
      ),
    );
  }
}

class PasswordInputWidget extends InputWidget {
  PasswordInputWidget({@required IconData iconData, @required String hint})
      : super(
            iconData: iconData,
            hint: hint,
            rightWidget: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(
                Icons.remove_red_eye,
                color: InputWidget.color,
              ),
            ));
}
