import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FAQPage extends StatefulWidget {
	_FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State < FAQPage > {

  TextStyle _cardTStyle = TextStyle(
		fontSize: 22,
		fontWeight: FontWeight.bold
	);

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
												"FAQs",
												style: TextStyle(
													//color: Colors.white,
													fontWeight: FontWeight.bold,
													fontSize: 40
												),
											),
											Text(
												"FREQUENTLY ASKED",
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
									children: <Widget>[ 
										Card(
											elevation: 3,
											margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
											child: Container(
												padding: EdgeInsets.all(10),
												decoration: BoxDecoration(
													color: Colors.white,
													borderRadius: BorderRadius.circular(5),
												),
												child: Column(
													children: <Widget>[
														Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
														  child: Row(
														  	mainAxisAlignment: MainAxisAlignment.spaceBetween,
														  	crossAxisAlignment: CrossAxisAlignment.end,
														  	children: <Widget>[
														  		Flexible(
														  		  child: Text(
														  		  	"Why so few FAQs?", 
														  		  	style: _cardTStyle.apply(
														  				  fontSizeDelta: -1,
                                      color: Colors.blueAccent
														  			  ),
														  		  ),
														  		),
														  	],
														  ),
														),
                            Row(
															mainAxisAlignment: MainAxisAlignment.spaceBetween,
															crossAxisAlignment: CrossAxisAlignment.end,
															children: <Widget>[
																Flexible(
																  child: Text(
																  	"Umm... Work in progress", 
																  	style: _cardTStyle.apply(
																		  fontSizeDelta: -4,
																	  ),
																  ),
																),
															],
														),
													],
												),
											),
										),
                    Card(
											elevation: 3,
											margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
											child: Container(
												padding: EdgeInsets.all(10),
												decoration: BoxDecoration(
													color: Colors.white,
													borderRadius: BorderRadius.circular(5),
												),
												child: Column(
													children: <Widget>[
														Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
														  child: Row(
														  	mainAxisAlignment: MainAxisAlignment.spaceBetween,
														  	crossAxisAlignment: CrossAxisAlignment.end,
														  	children: <Widget>[
														  		Flexible(
														  		  child: Text(
														  		  	"Only Codeforces and HackerRank(maybe added a few more already)? Seriously?", 
														  		  	style: _cardTStyle.apply(
														  				  fontSizeDelta: -1,
                                      color: Colors.blueAccent
														  			  ),
														  		  ),
														  		),
														  	],
														  ),
														),
                            Row(
															mainAxisAlignment: MainAxisAlignment.spaceBetween,
															crossAxisAlignment: CrossAxisAlignment.end,
															children: <Widget>[
																Flexible(
																  child: Text(
																  	"I'm looking to add more sources all the time. Email me with your favourites!", 
																  	style: _cardTStyle.apply(
																		  fontSizeDelta: -4,
																	  ),
																  ),
																),
															],
														),
													],
												),
											),
										),
                    Card(
											elevation: 3,
											margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
											child: Container(
												padding: EdgeInsets.all(10),
												decoration: BoxDecoration(
													color: Colors.white,
													borderRadius: BorderRadius.circular(5),
												),
												child: Column(
													children: <Widget>[
														Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
														  child: Row(
														  	mainAxisAlignment: MainAxisAlignment.spaceBetween,
														  	crossAxisAlignment: CrossAxisAlignment.end,
														  	children: <Widget>[
														  		Flexible(
														  		  child: Text(
														  		  	"Will you entertain feature requests?", 
														  		  	style: _cardTStyle.apply(
														  				  fontSizeDelta: -1,
                                      color: Colors.blueAccent
														  			  ),
														  		  ),
														  		),
														  	],
														  ),
														),
                            Row(
															mainAxisAlignment: MainAxisAlignment.spaceBetween,
															crossAxisAlignment: CrossAxisAlignment.end,
															children: <Widget>[
																Flexible(
																  child: Text(
																  	"Maybe? Depends on the feature and the time constraints, but do send me an email if you want some feature", 
																  	style: _cardTStyle.apply(
																		  fontSizeDelta: -4,
																	  ),
																  ),
																),
															],
														),
													],
												),
											),
										),
                    Card(
											elevation: 3,
											margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
											child: Container(
												padding: EdgeInsets.all(10),
												decoration: BoxDecoration(
													color: Colors.white,
													borderRadius: BorderRadius.circular(5),
												),
												child: Column(
													children: <Widget>[
														Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
														  child: Row(
														  	mainAxisAlignment: MainAxisAlignment.spaceBetween,
														  	crossAxisAlignment: CrossAxisAlignment.end,
														  	children: <Widget>[
														  		Flexible(
														  		  child: Text(
														  		  	"What even is your email?", 
														  		  	style: _cardTStyle.apply(
														  				  fontSizeDelta: -1,
                                      color: Colors.blueAccent
														  			  ),
														  		  ),
														  		),
														  	],
														  ),
														),
                            Row(
															mainAxisAlignment: MainAxisAlignment.spaceBetween,
															crossAxisAlignment: CrossAxisAlignment.end,
															children: <Widget>[
																Flexible(
																  child: Text(
																  	"It's in the About section", 
																  	style: _cardTStyle.apply(
																		  fontSizeDelta: -3,
																	  ),
																  ),
																),
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