import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sauna_zen/constants.dart';

class PrimaryButton extends StatelessWidget {
  final double width = 250;

  const PrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width / 10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: width / 100,
              blurRadius: 0,
              offset: Offset(0, width / 40), // changes position of shadow
            ),
          ],
        ),
        child: Stack(children: [
          Image.asset('assets/images/primary_button.png'),
          SizedBox(
            // This is a placeholder for the button text
            width: width,
            height: 61,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // TODO: Modify splash color and effect
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width / 10),
                ),
              ),
              onPressed: () => print('Button pressed'),
              child: Text(
                'Start Session',
                style: AppStyles.primaryButton,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
