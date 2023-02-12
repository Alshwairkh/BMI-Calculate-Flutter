import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';
import '../components/bottom_Button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: ktitleFontStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kCardSelectedColor,
                costumCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                      ),
                      Text(
                        resultText,
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBmiTextStyle,
                      ),
                      Text(
                        interpretation,
                        style: kBodyTextStyl,
                        textAlign: TextAlign.center,
                      )
                    ]),
              ),
            ),
            Container(
              child: BottumButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  buttonTitle: 'Re-calculate'),
              width: double.infinity,
              height: 80,
              color: kLowerAppbarColor,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(bottom: 20),
            ),
          ]),
    );
  }
}
