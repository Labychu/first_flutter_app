import "package:flutter/material.dart";


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

	int _score =  1;

	final barColor = const Color(0xFFEA7773);
	final bgColor = const Color(0xFFF0DF87);

	Widget build(context) {
		return MaterialApp(
			home: Scaffold(
				body: Center(
					child: Text(
						"$_score",
						style: TextStyle(color: Color(0xFF616C6F), fontSize: 80),
					),
				),
				backgroundColor: bgColor,
				appBar: AppBar(
					title: Text('Hello world!'),
					backgroundColor: barColor,
					centerTitle: true,
				),
				floatingActionButton: FloatingActionButton(
					child: Icon(
						Icons.cake,
						color: bgColor
					),
					onPressed: () {
						setState(() {
							_score++;
						});
					},
					backgroundColor: barColor,
				),
			)
		);
	}
}