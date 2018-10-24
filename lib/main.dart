import 'package:flutter/material.dart';

void main() =>
    runApp(PortfolioApp());

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('Portfolio')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('Experience')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('Skills')),
          ),
        ],

        ),
        body: new Container(
          child: new Column(
//          mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: new Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage('images/kutaje.jpg'),
                      ),),),
                ),
                flex: 1,
              ),
              new Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: new Container(
                    color: Colors.pink[300], height: 200.0, width: 400.0,),
                ),
                flex: 2,
              ),
              new Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: new Container(
                    color: Colors.pink[300], height: 200.0, width: 400.0,),
                ),
                flex: 2,
              ),
            ],
          ),
        ),
        bottomNavigationBar: new BottomNavigationBar(items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text("Search"),
          )
        ]),
      ),
    );
  }

}

