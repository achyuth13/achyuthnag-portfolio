import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntIcons.twitter_outline, color: Colors.white,
      ).mdClick(() {
        launch('https://twitter.com/achyuth_nag');
      }).make(),
      20.widthBox,
      Icon(
        AntIcons.github, color: Colors.white,
      ).mdClick(() {
        launch('https://github.com/achyuth13');
      }).make(),
      20.widthBox,
      Icon(
        AntIcons.linkedin, color: Colors.white,
      ).mdClick(() {
        launch('https://www.linkedin.com/in/achyuth-nag-17a36117a/');
      }).make(),
      20.widthBox,
      Icon(
        AntIcons.instagram_outline, color: Colors.white,
      ).mdClick(() {
        launch('https://www.instagram.com/achyuthnag/');
      }).make(),
    ].hStack();
  }
}
