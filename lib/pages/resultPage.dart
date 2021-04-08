import 'package:bmi_calculator/constants/constant.dart';
import 'package:bmi_calculator/pages/inputPage.dart';
import 'package:bmi_calculator/widgets/inputPageWidgets/ReusableCard.dart';
import 'package:bmi_calculator/widgets/inputPageWidgets/bottomButton.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final inputPage = InputPage();
  final status;
  final description;
  final result;
  ResultPage(
      {@required this.result,
      @required this.status,
      @required this.description});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Result'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(status.toUpperCase(), style: kStatusTextStyle),
                  SizedBox(height: 100),
                  Text(result, style: kResultTextStyle),
                  SizedBox(height: 70),
                  Text(
                    description.toUpperCase(),
                    style: kDescriptionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
