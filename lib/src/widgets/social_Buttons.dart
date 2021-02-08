import 'package:Vendor_app/src/styles/base.dart';
import 'package:Vendor_app/src/styles/buttons.dart';
import 'package:Vendor_app/src/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppSocialButton extends StatelessWidget {
  final SocialType socialType;

  AppSocialButton({
    @required this.socialType,
  });

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    Color iconColor;
    IconData icon;

    switch (socialType) {
      case SocialType.FaceBook:
        iconColor = Colors.lightBlueAccent[800];
        buttonColor = AppColors.facebook;
        icon = FontAwesomeIcons.facebookF;
        break;
      case SocialType.Google:
        iconColor = Colors.lightBlueAccent[800];
        buttonColor = AppColors.google;
        icon = FontAwesomeIcons.google;
        break;

      default:
        iconColor = Colors.lightBlueAccent[800];
        buttonColor = AppColors.facebook;
        icon = FontAwesomeIcons.facebookF;
        break;
    }

    return Container(
      height: ButtonStyles.buttonHeight,
      width: ButtonStyles.buttonHeight,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(BaseStyles.borderRadius),
        boxShadow: BaseStyles.boxShadow,
      ),
      child: (Icon(icon, color: iconColor)),
    );
  }
}

enum SocialType { FaceBook, Google }