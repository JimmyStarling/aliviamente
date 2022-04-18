import 'dart:collection';
import 'package:flutter/material.dart';
import '../models/constants.dart';

class ExploreScreen extends StatelessWidget{

  const ExploreScreen({Key? key}) : super(key: key);

	
  @override
  Widget build(BuildContext context) {	
	
		final ButtonStyle style =
			ElevatedButton.styleFrom(
				textStyle: const TextStyle(fontSize: 20),
			);

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
					mainAxisSize: MainAxisSize.min,
					children: <Widget>[
						const SizedBox(height: 30),
							ElevatedButton(
							style: style,
							onPressed: () {},
							child: const Text('Em desenvolvimento'),
						),
					],
				)			
			)
		);
	}
}
