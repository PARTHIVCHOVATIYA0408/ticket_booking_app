import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class DoubleTextWiddget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleTextWiddget(
      {super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            debugPrint('You are topped');
          },
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(
              color: Styles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}