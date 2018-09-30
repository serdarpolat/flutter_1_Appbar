import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transparent AppBar',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/bg_pattern1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'AppBar Title',
            style: TextStyle(color: Colors.white),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Card(
                elevation: 10.0,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'images/m1.jpg',
                      width: double.infinity,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Icon(
                              Icons.bubble_chart,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Mobile Conferance',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'at 12:30 PM - London',
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                                size: 26.0,
                              ),
                              Text(
                                '122',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
