import 'dart:collection';
import 'package:flutter/material.dart';
import '../models/constants.dart';
import './home.dart';

class LoginScreen extends StatefulWidget{

	const LoginScreen({Key? key, required this.title}) : super(key: key);
	final String title;

	@override
	State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>{	
  
	final _formKey = GlobalKey<FormState>();
	var rememberValue = false;

	@override
  Widget build(BuildContext context) {	
	
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: 
				Container(
					constraints: const BoxConstraints.expand(),
					decoration: const BoxDecoration(
					image: DecorationImage(image: AssetImage("images/home-illustration.png"), fit: BoxFit.fitWidth)),
					child:
					Scaffold(
						//backgroundColor: Colors.grey.shade100,
						body: Container(
							padding: const EdgeInsets.all(20),
							child: Column(
								mainAxisSize: MainAxisSize.min,
								mainAxisAlignment: MainAxisAlignment.center,
								crossAxisAlignment: CrossAxisAlignment.center,
								children: <Widget>[
									Container(	
											margin: EdgeInsets.only(right: 100),
											padding: EdgeInsets.all(20),
											child: Column(
													children: <Widget>[
													Text(
														'Entre para\ncontinuar',
														style: TextStyle(
															fontWeight: FontWeight.bold,
															fontSize: 38,
															height: 0.85,
															color: Color.fromRGBO(117, 41, 229, 1),
															fontFamily: 'Raleway',
														),
													),
													Text(
														'Alivie um pouco\na tensão',
														style: TextStyle(
															fontWeight: FontWeight.w400,
															fontSize: 24,
															height: 1.2,
															color: Color.fromRGBO(117, 41, 229, 1),
															fontFamily: 'Raleway',
														),
													)
												]
											)
										),
									Form(
										key: _formKey,
										child: Column(
												children:[
													Container(
														width: double.infinity,
														margin: EdgeInsets.only(top: 300, left: 10, right: 10),
														height: 50.0,
														child: RaisedButton(
															shape: RoundedRectangleBorder(	
																borderRadius: BorderRadius.circular(5.0),
																side: BorderSide(color: Color.fromRGBO(117, 41, 229, 1))),
																onPressed: () { _navigateToNextScreen(context); },
																padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 35.0, right: 35.0),
																color: Color.fromRGBO(117, 41, 229, 1),
																textColor: Colors.white,
																child: Text("Entrar e Aliviar",
																	style: TextStyle(
																		fontSize: 15,
																		fontWeight: FontWeight.w700,
																		fontFamily: 'Raleway',
																	)
																),
															),
													),
													Container(
														width: double.infinity,
														margin: EdgeInsets.only(top: 10, left: 10, right: 10),
														height: 50.0,
														child:TextButton.icon(
															onPressed: (){
															print("You pressed Icon Elevated Button");
															}, 
															icon: Container(child: Image.asset("images/icons/google.png"), width: 15, height: 15),  //icon data for elevated button
															label: Text("Entrar com Google"), //label text 
														)
													)
												],
										)
									)
								],
							)			
						)
					)
			)
		);	
	}
		
	void _navigateToNextScreen(BuildContext context) {
			Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
	}
}
