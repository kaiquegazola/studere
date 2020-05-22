import 'package:flutter/material.dart';

class MenuIconButton extends StatelessWidget {
  final String title;
  final IconData icon;

  const MenuIconButton({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(icon, color: Colors.grey,),
          SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
