import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:studere/pages/personalizado/personalizado.dart';

class PrincipalCards extends StatefulWidget {
  @override
  _PrincipalCardsState createState() => _PrincipalCardsState();
}

class _PrincipalCardsState extends State<PrincipalCards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildEstatistica(),
        Divider(),
        buildSimulados(),
      ],
    );
  }

  Widget buildEstatistica() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Estatísticas",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                "Ver todas",
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.blue,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Container(
            width: 500,
            height: 85,
            child: Scrollbar(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  builPorcentagem(),
                  builPorcentagem(),
                  builPorcentagem(),
                  builPorcentagem(),
                  builPorcentagem(),
                  builPorcentagem(),
                  builPorcentagem(),
                  builPorcentagem(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget builPorcentagem() {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Text(
            "Matemática",
            style: Theme.of(context).textTheme.caption.copyWith(
                  color: Colors.blueGrey,
                ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 10,
          ),
          CircularPercentIndicator(
            radius: 48,
            lineWidth: 4,
            percent: 0.57,
            center: Text(
              "57%",
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            ),
            progressColor: Colors.red,
          ),
        ],
      ),
    );
  }

  Widget buildSimulados() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Simulados",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                "Ver todos",
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.blue,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1.6,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Get.to(PersonalizadoPage());
                },
                child: _buildCardSimuladoIcon(FontAwesomeIcons.userCog,
                    "Personalizado", Colors.deepOrange.withOpacity(0.7)),
              ),
              _buildCardSimuladoInstituicao("assets/images/enem.png", "ENEM",
                  Colors.blue.withOpacity(0.6)),
              _buildCardSimuladoInstituicao("assets/images/fuvest.png",
                  "FUVEST", Colors.black.withOpacity(0.6)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCardSimuladoIcon(IconData icon, String label, Color color) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(26.0),
          alignment: Alignment.centerRight,
          child: Opacity(
            opacity: 0.3,
            child: Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(height: 16.0),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildCardSimuladoInstituicao(
      String asset, String label, Color color) {
    return Container(
      child: Center(
        child: Container(
          height: 90,
          child: Image.asset(
            asset,
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
