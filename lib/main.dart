import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
    },
  ));
}

final myController = TextEditingController();
final myController2 = TextEditingController();

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text('First Screen'),
        leading: null,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Container(
              width: 300,
              child: TextField(
                maxLength: 10,
                controller: myController,
                decoration: InputDecoration(
                  hintText: "Enter your username",
                  labelText: "Username",
                  labelStyle: new TextStyle(
                    color: Colors.teal[900],
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal[900]),
                  ),
                  focusedBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal[900]),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                maxLength: 20,
                controller: myController2,
                obscureText: true,
                autofocus: true,
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "Password",
                    labelStyle: new TextStyle(
                      color: Colors.teal[900],
                    ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal[900]),
                  ),
                  focusedBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal[900]),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[900],
              ),
              child: Text('Login',),
              onPressed: () {
                if (myController2.text == "student" &&
                    myController.text == "student") {
                  Navigator.pushNamed(context, '/second');
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                }
                // Navigate to the second screen using a named route.
              },
            ),
          ])),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var amount = 0;
  var amount2 = 0;
  var amount3 = 0;

  var headphonePrice = '\$275';
  var watchPrice = '\$750';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: Text("Product Screen"),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstScreen()),
              );
            },
            icon: Icon(Icons.home),
          )),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Card(
            color: Colors.teal,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/headphones.jpg'),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  '$headphonePrice',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'SourceSansPro',
                    fontSize: 35,
                  ),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(width: 1, color: Colors.white))),
                    onPressed: () {
                      setState(() {
                        if (amount > 0) {
                          amount -= 1;
                        }
                      });
                    },
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$amount',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(width: 1, color: Colors.white))),
                    onPressed: () {
                      setState(() {
                        amount += 1;
                      });
                    },
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.teal,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/apple_w.jpg'),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  '$watchPrice',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'SourceSansPro',
                    fontSize: 35,

                  ),
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(width: 1, color: Colors.white))),
                    onPressed: () {
                      setState(() {
                        if (amount3 > 0) {
                          amount3 -= 1;
                        }
                      });
                    },
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$amount3',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(width: 1, color: Colors.white))),
                    onPressed: () {
                      setState(() {
                        amount3 += 1;
                      });
                    },
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[900],
              ),
              onPressed: () {
                int resultHeadphone = amount * 275;
                int resultWatch = amount3 * 750;
                String result = (resultWatch + resultHeadphone).toString();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FourthRoute(
                        key: new Key("Checkout"),
                        headphone: amount.toString(),
                        watch: amount3.toString(),
                      ),
                    ));
              },
              child: Text("Checkout")),
        ],
      )),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text("Fail login"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Login Failed",
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[900],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
            ]),
      ),
    );
  }
}

class FourthRoute extends StatefulWidget {
  String paid = 'Not Paid';
  final String headphone;
  final String watch;

  FourthRoute({Key key, @required this.headphone, @required this.watch})
      : super(key: key);
  @override
  _FourthRouteState createState() => _FourthRouteState(headphone, watch);
}

class _FourthRouteState extends State<FourthRoute> {
  String headphone;
  String watch;
  String paid = 'Not paid';
  _FourthRouteState(this.headphone, this.watch);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text("Checkout Page"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                padding: EdgeInsets.all(10),
                color: Colors.teal,
                alignment: Alignment.center,
                child: Text(
                  "$watch piece(s) \$750 watch",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
              Container(
                width: 300,
                padding: EdgeInsets.all(10),
                color: Colors.teal,
                alignment: Alignment.center,
                child: Text(
                  "$headphone piece(s) \$275 headphone",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
              Container(
                width: 300,
                padding: EdgeInsets.all(10),
                color: Colors.teal,
                alignment: Alignment.center,
                child: Text(
                  "$paid",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[900],
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      int result = ((int.parse(headphone) * 275) +
                          (int.parse(watch) * 750));
                      return AlertDialog(
                        title: Text('Total'),
                        content: Text("Your total is: $result\$"),
                        actions: <Widget>[
                          TextButton(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondScreen()),
                              );
                            },
                          ),
                          TextButton(

                            child: Text('OK'),
                            onPressed: () {
                              setState(() {
                                paid = 'Paid';
                                Navigator.of(context).pop();
                              });
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Confirm Checkout'),
              ),
            ]),
      ),
    );
  }
}
