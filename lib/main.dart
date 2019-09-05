import 'package:beutifului/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
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
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 26),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  CupertinoIcons.back,
                  size: 30,
                ),
                Text(
                  'Explore',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                Icon(
                  CupertinoIcons.search,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: deviceSize.height * 0.1,
            ),
            SizedBox(
              height: deviceSize.height * 0.6,
              width: deviceSize.width * 0.90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  allCar(context: context, images: UiData.secondCar),
                  allCar(context: context, images: UiData.thirdCar),
                  allCar(context: context, images: UiData.fourthCar),
                  allCar(context: context, images: UiData.firstCar),
                ],
              ),
            ),
            SizedBox(
              height: deviceSize.height * 0.08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.history,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.done,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.beenhere,
                    color: Colors.green,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  allCar({BuildContext context, String images}) {
    var deviceSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {

      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Material(
          borderRadius: BorderRadius.circular(12),
          elevation: 5,
          shadowColor: Colors.black,
          child: Container(
            height: deviceSize.height * 0.6,
            width: deviceSize.width * 0.90,
            color: Colors.black12,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Audi A3',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                ),
                Text(
                  'currently Available',
                  style: TextStyle(color: Colors.green, fontSize: 17),
                ),
                Container(
                  height: 320,
                  width: 450,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(images), fit: BoxFit.contain)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('£40/day'),
                      Row(
                        children: <Widget>[
                          Icon(Icons.face),
                          SizedBox(
                            width: 3,
                          ),
                          Text('5')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  showBottomSheet({String images}) {
    var deviceSize = MediaQuery.of(context).size;

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: deviceSize.height * 0.9,
            width: deviceSize.width * 0.5,
            child: Column(
              children: <Widget>[

              ],
            ),
          );
        });
  }
}
