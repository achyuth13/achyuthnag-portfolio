import 'package:flutter/material.dart';
import 'package:personal_portfolio/helper_functions.dart';
import 'package:personal_portfolio/resources/portfolio_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class WorkExperienceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: PortfolioColors.secondaryColor,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Flex(
          direction: isMobile(context) ? Axis.vertical : Axis.horizontal,
          children: [
            'Research Papers Submitted :'
                .richText
                .xl4
                .white
                .align(TextAlign.left)
                .make(),
            isMobile(context) ? 30.heightBox : 80.widthBox,
            _getExperienceWidget('Recommendation system behind GoGet '),
          ],
          mainAxisAlignment: isMobile(context) ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.start,
        ).p64(),
      ),
    );
  }

  Widget _getExperienceWidget(String experienceDetails) {
    return VxResponsive(
      xsmall: _mobileAndDeskWidget(experienceDetails),
      small: _mobileAndDeskWidget(experienceDetails),
      medium: _tabWidget(experienceDetails),
      large: _mobileAndDeskWidget(experienceDetails),
      xlarge: _mobileAndDeskWidget(experienceDetails),
    );
  }

  Widget _mobileAndDeskWidget(String experienceDetails){
    return experienceDetails
        .text
        .align(TextAlign.center)
        .size(16)
        .white
        .semiBold
        .make()
        .box
        .border(color: PortfolioColors.accentColor)
        .p32
        .rounded
        .make();
  }

  Widget _tabWidget(String experienceDetails){
    return experienceDetails
        .text
        .align(TextAlign.center)
        .size(16)
        .white
        .semiBold
        .make()
        .box
        .rounded
        .alignCenter
        .border(color: PortfolioColors.accentColor)
        .p16
        .square(200)
        .make();
  }
}

