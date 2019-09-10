import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
	_AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State < AboutPage > {

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
			    	    	"About",
			    	    	style: TextStyle(
			    	    		//color: Colors.white,
			    	    		fontWeight: FontWeight.bold,
			    	    		fontSize: 40
			    	    	),
			    	    ),
                Text(
			    	    	"THE DEVELOPER",
			    	    	style: TextStyle(
			    	    		//color: Colors.white,
			    	    		fontWeight: FontWeight.bold,
			    	    		fontSize: 17,
                    color: Colors.blue
			    	    	)
			    	    ),
			    	  ],
			    	),
			    ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height - 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/pp.jpeg")
                          ),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Container(
                          height: 200,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Anant Bhasin", 
                            style: _cardTStyle.apply(
                              fontSizeDelta: 3,
                              color: Colors.blueAccent
                            ),
                          ),
                          Text(
                            "@aKn1ghtOut", 
                            style: _cardTStyle.apply(
                              fontSizeDelta: 3,
                              color: Colors.blueGrey
                            ),
                          ),
                          Text(
                            "bhasinanant@gmail.com", 
                            style: _cardTStyle.apply(
                              fontSizeDelta: 3,
                              color: Colors.black
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ),
              ],
            ),
          )
			  ],
			),
		);
	}
}