import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studere/pages/principal/principal_cards.dart';
import 'package:studere/widgets/menu_icon_button.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.8), //change your color here
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: null,
          )
        ],
        title: Text(
          "Studare",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: new ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 25),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    color: Color(0xFFEBEEF1),
                    child: Center(
                      child: Text(
                        "Studare",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                          radius: 40,
                          backgroundImage: AdvancedNetworkImage(
                            "https://www.gravatar.com/avatar/00000000000000000000000000000000?d=mp&f=y",
                            useDiskCache: true,
                            cacheRule:
                                CacheRule(maxAge: const Duration(days: 7)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          child: Text(
                            "Fulano da Silva",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Divider(),
                      ListTile(
                        dense: true,
                        title: MenuIconButton(
                            title: 'Inicio', icon: FontAwesomeIcons.home),
                      ),
                      ListTile(
                        dense: true,
                        title: MenuIconButton(
                          title: "Estatísticas",
                          icon: FontAwesomeIcons.solidChartBar,
                        ),
                      ),
                      ListTile(
                        dense: true,
                        title: MenuIconButton(
                          title: "Simulados",
                          icon: FontAwesomeIcons.pencilRuler,
                        ),
                      ),
                      ListTile(
                        dense: true,
                        title: MenuIconButton(
                            title: 'Configurações', icon: FontAwesomeIcons.cog),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Divider(),
                      Text(
                        "www.studare.com.br",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          children: [
            PrincipalCards(),
          ],
        ),
      ),
    );
  }
}
