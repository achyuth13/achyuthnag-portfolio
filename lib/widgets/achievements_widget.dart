import 'package:flutter/material.dart';
import 'package:personal_portfolio/helper_functions.dart';
import 'package:personal_portfolio/widgets/project_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class AchievementsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.black,
      child: Flex(
        direction: isMobile(context) ? Axis.vertical : Axis.horizontal,
        children: [
          'Achievements :'
              .richText
              .xl4
              .white
              .align(TextAlign.left)
              .make(),
          80.widthBox,
          Expanded(
              child: VxSwiper(
            items: [
              ProjectWidget(
                projectName: 'Runner up in coding contest - optimizePrime',
                squareSize: 250,
              ),
            ],
            height: 170,
            enlargeCenterPage: false,
            viewportFraction: isMobile(context) ? 0.75 : 0.4,
          )),
        ],
      ).p64().h(isMobile(context) ? 500 : 300),
    );
  }
}
