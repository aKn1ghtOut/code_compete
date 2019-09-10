import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Models/Competitions.dart';

class HomePage extends StatefulWidget {
	_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State < HomePage > {

	List<Map<String, dynamic>> _competitions = [];

	static const String _codeforces = "Codeforces";

	TextStyle _cardTStyle = TextStyle(
		fontSize: 22,
		fontWeight: FontWeight.bold
	);

	@override
	void initState() {
		super.initState();

		if(_competitions.length == 0)
		update();
	}

	void update()
	{
		Competition.getFromCF().then((E){
			setState(() {
				_competitions.addAll(E);
				_competitions.sort((E,B) => E["time"].compareTo(B["time"]));
			});
		});

		Competition.getFromHR().then((E){
			setState(() {
				_competitions.addAll(E);
				_competitions.sort((E,B) => E["time"].compareTo(B["time"]));
			});
		});
	}

	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: ListView(
				children: <Widget>[
					Container(
						padding: EdgeInsets.fromLTRB(20, 80, 20, 30),
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: <Widget>[
								Container(
									padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: <Widget>[
											Text(
												"UPCOMING",
												style: TextStyle(
													//color: Colors.white,
													fontWeight: FontWeight.bold,
													fontSize: 40
												),
											),
											Text(
												"CONTESTS",
												style: TextStyle(
													//color: Colors.white,
													fontWeight: FontWeight.bold,
													fontSize: 17,
													color: Colors.blueAccent
												),
											),
										],
									),
								),
								Column(
									children: _competitions.length > 0 ? _competitions.map<Widget>((E) => 
										Card(
											elevation: 3,
											margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
											child: Container(
												padding: EdgeInsets.all(10),
												decoration: BoxDecoration(
													color: Colors.white,
													borderRadius: BorderRadius.circular(5),
												),
												child: Column(
													children: <Widget>[
														Row(
															mainAxisAlignment: MainAxisAlignment.spaceBetween,
															crossAxisAlignment: CrossAxisAlignment.end,
															children: <Widget>[
																Flexible(
																  child: Text(
																  	E["title"], 
																  	style: _cardTStyle.apply(
																		  fontSizeDelta: -8
																	  ),
																  ),
																),
															],
														),
														Row(
															mainAxisAlignment: MainAxisAlignment.spaceBetween,
															crossAxisAlignment: CrossAxisAlignment.center,
															children: <Widget>[
																Container(
																	child: Text(
																		E["platform"],
																		style: _cardTStyle.apply(
																			fontSizeDelta: -2,
																			color: 	_codeforces.toLowerCase() == E["platform"].toLowerCase() ?  Colors.red : 
																					"HackerRank" == E["platform"] ? Colors.blue :
																					Colors.purple
																		),
																	),
																),
																Material(
																	borderRadius: BorderRadius.circular(5),
																	color: Colors.white,
																	child: InkWell(
																		borderRadius: BorderRadius.circular(5),
																		child: IconButton(
																			icon: Icon(Icons.exit_to_app),
																			color: Colors.black,
																			onPressed: () async {
																				var url1 = E["link"];
																				if(await canLaunch(url1))
																				await launch(url1);
																			},
																		),
																	),
																)
															],
														),
														Row(
															mainAxisAlignment: MainAxisAlignment.spaceBetween,
															crossAxisAlignment: CrossAxisAlignment.end,
															children: <Widget>[
																Text(
																	E["time"].month == DateTime.now().month && E["time"].day == DateTime.now().day ? "Today" :
																	DateTime.now().millisecondsSinceEpoch > E["time"].millisecondsSinceEpoch && (DateTime.now().millisecondsSinceEpoch - E["time"].millisecondsSinceEpoch) < (E["durationSeconds"] * 1000) ? "Running" :
																	(Competition.dayer[E["time"].day - 1] + " " + Competition.monther[E["time"].month - 1]),
																	style: _cardTStyle.apply(
																		color: Colors.blueAccent
																	),
																),
																Column(
																	crossAxisAlignment: CrossAxisAlignment.end,
																	children: <Widget>[
																		Text(
																			(E["time"].hour.toString() + ":" + (E["time"].minute < 10 ? "0" : "") + E["time"].minute.toString()),
																			style: _cardTStyle,
																		),
																		Text(
																			(
																				E["durationSeconds"] < 100000 ?
																				(E["durationSeconds"] / 3600).round().toString() + "Hrs" + 
																				( 
																					(E["durationSeconds"] % 3600) > 0 ? 
																					(" " + ((E["durationSeconds"] % 3600) / 60).round().toString() + "Mins") 
																					: ""
																				)
																				: "Long Timeframe"
																			),
																			style: _cardTStyle.apply(
																				fontSizeDelta: -5,
																				color: Colors.blueAccent
																			),
																		),
																	],
																),
															],
														),
													],
												),
											),
										)
									).toList() : <Widget>[
										Card(
											elevation: 3,
											margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
											child: Container(
												padding: EdgeInsets.all(10),
												decoration: BoxDecoration(
													color: Colors.white,
													borderRadius: BorderRadius.circular(5),
												),
												child: Column(
													children: <Widget>[
														Row(
															mainAxisAlignment: MainAxisAlignment.spaceBetween,
															crossAxisAlignment: CrossAxisAlignment.end,
															children: <Widget>[
																Flexible(
																  child: Text(
																  	"Loading", 
																  	style: _cardTStyle,
																  ),
																),
															],
														),
														Row(
															mainAxisAlignment: MainAxisAlignment.spaceBetween,
															crossAxisAlignment: CrossAxisAlignment.center,
															children: <Widget>[
																Container(
																	child: Text(
																		"Loading",
																		style: _cardTStyle.apply(
																			fontSizeDelta: -5,
																			color: Colors.purple
																		),
																	),
																)
															],
														),
													],
												),
											),
										)
									],
								),
							],
						),
					),
			  ],
			),
		);
	}
}