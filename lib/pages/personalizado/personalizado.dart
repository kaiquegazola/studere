import 'dart:math';

import 'package:flutter/material.dart';

class PersonalizadoPage extends StatefulWidget {
  @override
  _PersonalizadoPageState createState() => _PersonalizadoPageState();
}

class _PersonalizadoPageState extends State<PersonalizadoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Text(
          "Studare",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.8), //change
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0, top: 10),
            child: Text(
              "Selecione o objetivo:",
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500,
                  ),
              textAlign: TextAlign.left,
            ),
          ),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            children: [
              cardBotoes(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            child: Text("Avançar"),
          ),
        ),
      ),
    );
  }

  Widget cardBotoes() {
    return Row(
      children: [
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: [
              genButton(
                "assets/images/enem.png",
              ),
              genButton(
                "assets/images/fuvest.png",
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget genButton(String img) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Checkbox(value: Random().nextBool()),
          OutlineButton(
            highlightedBorderColor: Colors.blue,
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(img),
              ],
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
