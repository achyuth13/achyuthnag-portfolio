import 'package:flutter/material.dart';
import 'package:personal_portfolio/resources/portfolio_colors.dart';
import 'package:personal_portfolio/widgets/achievements_widget.dart';
import 'package:personal_portfolio/widgets/footer.dart';
import 'package:personal_portfolio/widgets/header.dart';
import 'package:personal_portfolio/widgets/introduction_widget.dart';
import 'package:personal_portfolio/widgets/middle.dart';
import 'package:personal_portfolio/widgets/work_experience_widget.dart';
import 'package:velocity_x/velocity_x.dart';


class PortfolioHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: PortfolioColors.primaryColor,
      child: VStack(
        [
          HeaderWidget(),
          if(context.screenWidth <= 960) IntroductionWidget().p16(),
          MiddleWidget(),
          WorkExperienceWidget(),
          FooterWidget(),
        ],
      ).scrollVertical(),
    );
  }
}
