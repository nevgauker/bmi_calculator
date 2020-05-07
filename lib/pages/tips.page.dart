import 'package:flutter/material.dart';
import 'package:bmi_calculator/services/calculator_brain.dart';
import 'tip_info_page.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CalculatorBrain brain = CalculatorBrain();

    List<String> tips = brain.tipsForBetterBmi();

    return Scaffold(
      appBar: AppBar(
        title: Text('HOW TO GET BETTER BMI'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: tips.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
                  leading: Icon(
                    Icons.info,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TipInfoPage(
                          info: brain.infoForTip(index),
                        ),
                      ),
                    );
                  },
                  title: Text(
                    tips[index],
                  ),
                )),
      ),
    );
  }
}
