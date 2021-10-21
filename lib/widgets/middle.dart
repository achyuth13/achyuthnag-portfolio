import 'package:flutter/material.dart';
import 'package:personal_portfolio/helper_functions.dart';
import 'package:personal_portfolio/widgets/project_widget.dart';
import 'package:velocity_x/velocity_x.dart';


class MiddleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.black,
      child: Flex(
        direction: isMobile(context) ? Axis.vertical : Axis.horizontal,
        children: [
          'Some Projects :'
              .richText
              .xl4
              .white
              .align(TextAlign.left)
              .make(),
          80.widthBox,
          Expanded(
              child: VxSwiper(
            items: [
              ProjectWidget(projectName: 'GoGet'),
              ProjectWidget(projectName: 'Analysis for GoGet'),
              ProjectWidget(projectName: 'Shop for Plants'),
              ProjectWidget(projectName: 'Gym DBMS'),
            ],
            height: 170,
            enlargeCenterPage: true,
            viewportFraction: isMobile(context) ? 0.75 : 0.4,
            autoPlay: true,
            autoPlayInterval: 3.seconds,
          )),
        ],
      ).p64().h(isMobile(context) ? 500 : 300),
    );
  }
}
