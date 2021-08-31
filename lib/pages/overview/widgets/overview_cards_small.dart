import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Entregas em progresso',
            value: '7',
            onTap: () {},
            isActive: true,
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Pacotes entregues',
            value: '23',
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Entregas canceladas',
            value: '2',
            onTap: () {},
          ),
          SizedBox(height: _width / 64),
          InfoCardSmall(
            title: 'Entregas agendadas',
            value: '6',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
