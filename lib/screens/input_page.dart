import 'package:bmi/costomWidgets/cbutton.dart';
import 'package:bmi/costomWidgets/container.dart';
import 'package:bmi/costomWidgets/constants.dart';
import 'package:bmi/costomWidgets/costom_button.dart';
import 'package:bmi/costomWidgets/costom_icone.dart';
import 'package:bmi/data/calculator_function.dart';
import 'package:bmi/screens/result_screen.dart';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//const activeColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 70;
  int age = 25;

  Gender? selectedGender;

  Color notSelectedColor = kinactiveColor;

// 1 is male and 2 is female

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI CALAYLATOR',
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Ccontiner(
                    onTap1: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kactiveColor
                        : kinactiveColor,
                    cardChild: const CIcon(
                      icon: FontAwesomeIcons.mars,
                      text: 'MELE',
                    ),
                  ),
                ),
                Expanded(
                  child: Ccontiner(
                    onTap1: () {
                      //    onDoubleTap: () {
                      //   setState(() {
                      //     selectedGender = null;
                      //   });
                      // },

                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kactiveColor
                        : kinactiveColor,
                    cardChild: const CIcon(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Ccontiner(
                    color: kinactiveColor,
                    cardChild: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '  HEIGHT',
                          style: TextStyle(
                            fontSize: 18,
                            color: textColor,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumerTextStyle,
                            ),
                            const Text(
                              ' cm',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 15,
                              ),
                              overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 30,
                              ),
                              thumbColor: const Color(0xffeb1555),
                              overlayColor: const Color(0x15eb1555)),
                          child: Slider(
                            //   activeColor: Colors.white,
                            // inactiveColor: Color(),
                            value: height.toDouble(),
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                            min: 120,
                            max: 220,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Ccontiner(
                    color: kinactiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: kSmallTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumerTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onTap: () {
                                setState(() {
                                  weight <= 10 ? weight = 10 : weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Ccontiner(
                    color: kinactiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: kSmallTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumerTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                setState(() {
                                  age <= 10 ? age = 10 : age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          //here
          BottomButton(
            text: 'CALCULATE',
            onClick: () {
              Calculator calt = Calculator(wight: weight, hight: height);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => ResultScreen(
                    bmiResult: calt.calculateBMI(),
                    interaction: calt.getInterpretation(),
                    resultText: calt.getResult().toUpperCase(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
