import 'package:bmi/costomWidgets/cbutton.dart';
import 'package:bmi/costomWidgets/constants.dart';
import 'package:bmi/costomWidgets/container.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interaction,
  });

  final String bmiResult;
  final String resultText;
  final String interaction;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          // Other properties of the AppBar
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
              flex: 7,
              child: Ccontiner(
                color: kactiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          resultText,
                          style: kResultTextStyle,
                        ),
                        Text(bmiResult, style: kBMITextStyle),
                        Text(
                          interaction,
                          style: kBodyStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              text: 'RE-CALCULATE',
              onClick: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
      ),
    );
  }
}
