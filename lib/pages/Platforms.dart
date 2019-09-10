import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlatformPage extends StatefulWidget {
	_PlatformPageState createState() => _PlatformPageState();
}

class _PlatformPageState extends State < PlatformPage > {

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
			    	decoration: BoxDecoration(
			    		//color: Colors.blue,
			    	),
			    	padding: EdgeInsets.fromLTRB(20, 80, 0, 30),
			    	child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
			    	  children: <Widget>[
			    	    Text(
			    	    	"PLATFORMS",
			    	    	style: TextStyle(
			    	    		//color: Colors.white,
			    	    		fontWeight: FontWeight.bold,
			    	    		fontSize: 40
			    	    	),
			    	    ),
                Text(
			    	    	"THE GOTO'S",
			    	    	style: TextStyle(
			    	    		//color: Colors.white,
			    	    		fontWeight: FontWeight.bold,
			    	    		fontSize: 17,
                    color: Colors.blue
			    	    	),
			    	    ),
			    	  ],
			    	),
			    ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Codeforces",
                            style: _cardTStyle.apply(
                              color: Colors.red,
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
                                var url1 = "https://www.codeforces.com/contests";
                                if(await canLaunch(url1))
                                await launch(url1);
                              },
                            ),
                          ),
                        )
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "HackerRank",
                            style: _cardTStyle.apply(
                              color: Colors.blueAccent,
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
                                var url1 = "https://www.hackerrank.com/contests";
                                if(await canLaunch(url1))
                                await launch(url1);
                              },
                            ),
                          ),
                        )
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "CodeChef",
                            style: _cardTStyle.apply(
                              color: Colors.brown,
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
                                var url1 = "https://www.codechef.com/contests";
                                if(await canLaunch(url1))
                                await launch(url1);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
			  ],
			),
		);
	}
}