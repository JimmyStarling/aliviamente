import 'dart:collection';

import 'package:flutter/material.dart';
import '../models/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  cardsArray(int value) {
    if (value == 1) {
      return Colors.purple[800];
    } else if (value == 2) {
      return Colors.green[100];
    } else {
      return Colors.black87;
    }
  }

  CustomCard(BuildContext context, Color cardColor) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0), color: cardColor),
        child: Column(children: <Widget>[
          Text(
            'Interruptor 💡',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            'Alivio de estresse',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          )
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey),
        home: Scaffold(
            backgroundColor: Colors.grey.shade100,
            body: Column(
              // Columns inside aligned with the principal column.
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 40.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Escolha alguns\nJogos',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Raleway',
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Alivíe escolhendo um jogo\nabaixo ou deixe a gente\nescolher por você :)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Raleway',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: CarouselSlider(
                          options: CarouselOptions(height: 400.0),
                          items: [1, 2, 3].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return CustomCard(context, cardsArray(i));
                              },
                            );
                          }).toList(),
                        ))
                      ]),
                ),
              ],
            )));
  }
}
