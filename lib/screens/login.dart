import 'dart:collection';
import 'package:flutter/material.dart';
import '../models/constants.dart';

class LoginScreen extends StatelessWidget{

  const LoginScreen({Key? key}) : super(key: key);

	
  @override
  Widget build(BuildContext context) {	
	
		final ButtonStyle style =
			ElevatedButton.styleFrom(
				Color?: const Color.fromARGB(255, 66, 165, 245); 
				textStyle: const TextStyle(fontSize: 20)

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
							child: const Text('Enabled'),
						),
					],
				)			
			)
		)
	}

}
