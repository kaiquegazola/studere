import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:studere/widgets/background_widget.dart';
import 'package:studere/widgets/input_widget.dart';
import 'package:studere/widgets/social_login_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          BackgroundWidget(),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Studare",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text("Acesse a sua conta",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 25,
                ),
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 5),
                              blurRadius: 5)
                        ]),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        InputWidget(
                          iconData: Icons.person,
                          hint: "E-mail",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        PasswordInputWidget(
                            iconData: Icons.vpn_key, hint: "Senha"),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Esqueceu a senha?",
                                style: TextStyle(
                                    color: Color.fromRGBO(112, 131, 164, 1)),
                              ),
                              Expanded(
                                child: _buildCheckBox(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          width: double.infinity,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(111, 109, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(111, 109, 255, .5),
                                    blurRadius: 15,
                                    offset: Offset(0, 5))
                              ]),
                          child: Text(
                            "Continuar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "ou",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(208, 219, 224, 1)),
                            ),
                          ),
                        ),
                        SocialLoginWidget(
                          iconData: FontAwesomeIcons.facebook,
                          text: "Continuar com Facebook",
                          color: Color.fromRGBO(58, 93, 158, 1),
                        ),
                        SizedBox(height: 20),
                      ],
                    )),
                SizedBox(height: 15),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 50, right: 50, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Não tem uma conta?",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(112, 131, 164, 1)),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Cadastre-se!",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(111, 109, 255, 1)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }

  Row _buildCheckBox() {
    var checkBoxColor = Color.fromRGBO(111, 109, 255, 1);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: 15,
          height: 15,
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(border: Border.all(color: checkBoxColor)),
          child: Icon(
            Icons.check,
            size: 13,
            color: checkBoxColor,
          ),
        ),
        Text(
          "Manter conectado",
          style: TextStyle(fontSize: 10, color: checkBoxColor),
        ),
      ],
    );
  }
}
