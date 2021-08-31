import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/info_card.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  const OverviewCardsMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: 'Entregas em progresso',
              value: '7',
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Pacotes entregues',
              value: '23',
              onTap: () {},
              topColor: Colors.lightGreen,
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            InfoCard(
              title: 'Entregas canceladas',
              value: '2',
              onTap: () {},
              topColor: Colors.redAccent,
            ),
            SizedBox(width: _width / 64),
            InfoCard(
              title: 'Entregas agendadas',
              value: '6',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
