import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        textDirection: TextDirection.ltr,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assests/night.jpg'),fit: BoxFit.cover
              )
            ),
          ),
          Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top:60.0,left: 20),
                                child: Text(
                                  'Welcome  Satwik !',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top:10.0,left: 22),
                                child: Text(
                                  'Friday, 11 May 2021',style: TextStyle(color: Colors.white,fontSize: 15),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: ' Search Plantes or Galaxies',prefixIcon: Icon(Icons.search)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                                child: Text(
                                    'POPULAR',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.only(top: 50),
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Stack(
                                        overflow: Overflow.visible,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.97,
                                            height: MediaQuery.of(context).size.height*0.45,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),color: Colors.white,
                                            ),
                                          ),
                                          Positioned(
                                            top: -30,
                                            child:  Padding(
                                              padding: const EdgeInsets.only(left: 0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(right:60.0),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: MediaQuery.of(context).size.height * 0.188,
                                                            width: MediaQuery.of(context).size.width * 0.387,
                                                            decoration: BoxDecoration(
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: Colors.black,
                                                                      spreadRadius: 10,
                                                                      blurRadius: 30
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                BorderRadius.circular(70),
                                                                image: DecorationImage(image: AssetImage('assests/p2.jpg'),fit: BoxFit.fill),color: Colors.white
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:20.0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text(
                                                                  'MARS',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                                                                ),
                                                                Text(
                                                                  'Milkyway Galaxy',style: TextStyle(color: Colors.black,fontSize: 15,),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.02,
                                                  ),
                                                  Container(
                                                    child:  Padding(
                                                      padding: const EdgeInsets.only(left: 30),
                                                      child:
                                                      Text(
                                                        'Explore Strange places on Mars and',style: TextStyle(color: Colors.black,fontSize: 15,),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left:30.0),
                                                      child: Text(
                                                        'experience the great time in your life time.',style: TextStyle(color: Colors.black,fontSize: 15,),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.06,
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Text(
                                                              ' 225m km ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                                            ),
                                                            Text(
                                                              ' from Earth ',style: TextStyle(color: Colors.black,fontSize: 15),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height * 0.04,
                                                          child: VerticalDivider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                              '15 Days ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                                            ),
                                                            Text(
                                                              'Duration ',style: TextStyle(color: Colors.black,fontSize: 15),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height * 0.04,
                                                          child: VerticalDivider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                              ' 200 km/sec',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                                            ),
                                                            Text(
                                                              ' speed',style: TextStyle(color: Colors.black,fontSize: 15),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.01,
                                                  ),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width * 0.967,
                                                    child: Divider(
                                                      height: 20,
                                                      thickness: 1,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.015,
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Stack(
                                                          overflow: Overflow.visible,
                                                          textDirection: TextDirection.ltr,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  ' 250K ',style: TextStyle(color: Colors.orange,fontSize: 25,fontWeight: FontWeight.bold),
                                                                ),
                                                                Text(
                                                                  ' /Person',style: TextStyle(color: Colors.black,fontSize: 15),
                                                                ),
                                                              ],
                                                            ),
                                                            Positioned(
                                                              top: -5,
                                                              left: -5,
                                                              child: Text(
                                                                '\$',style: TextStyle(color: Colors.orange,fontSize: 15),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width*0.2,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                              0.1,
                                                          height: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.06,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(40),
                                                              image: DecorationImage(
                                                                  image: AssetImage('assests/i1.jpg')
                                                              )
                                                          ),
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width*0.01,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                              0.1,
                                                          height: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.06,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(40),
                                                              image: DecorationImage(
                                                                  image: AssetImage('assests/i2.jpg')
                                                              )
                                                          ),
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width*0.01,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                              0.1,
                                                          height: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.06,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(40),
                                                              image: DecorationImage(
                                                                  image: AssetImage('assests/i3.jpg')
                                                              )
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.05,
                                    ),
                                    Container(
                                      child: Stack(
                                        overflow: Overflow.visible,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.97,
                                            height: MediaQuery.of(context).size.height*0.45,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),color: Colors.white,
                                            ),
                                          ),
                                          Positioned(
                                            top: -30,
                                            child:  Padding(
                                              padding: const EdgeInsets.only(left: 0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(right:60.0),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: MediaQuery.of(context).size.height * 0.188,
                                                            width: MediaQuery.of(context).size.width * 0.387,
                                                            decoration: BoxDecoration(
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: Colors.black,
                                                                      spreadRadius: 10,
                                                                      blurRadius: 30
                                                                  )
                                                                ],
                                                                borderRadius:
                                                                BorderRadius.circular(70),
                                                                image: DecorationImage(image: AssetImage('assests/p1.jpg'),fit: BoxFit.fill),color: Colors.white
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:20.0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text(
                                                                  'MARS',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                                                                ),
                                                                Text(
                                                                  'Milkyway Galaxy',style: TextStyle(color: Colors.black,fontSize: 15,),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.02,
                                                  ),
                                                  Container(
                                                    child:  Padding(
                                                      padding: const EdgeInsets.only(left: 30),
                                                      child:
                                                      Text(
                                                        'Explore Strange places on Mars and',style: TextStyle(color: Colors.black,fontSize: 15,),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left:30.0),
                                                      child: Text(
                                                        'experience the great time in your life time.',style: TextStyle(color: Colors.black,fontSize: 15,),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.06,
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Text(
                                                              ' 225m km ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                                            ),
                                                            Text(
                                                              ' from Earth ',style: TextStyle(color: Colors.black,fontSize: 15),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height * 0.04,
                                                          child: VerticalDivider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                              '15 Days ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                                            ),
                                                            Text(
                                                              'Duration ',style: TextStyle(color: Colors.black,fontSize: 15),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height * 0.04,
                                                          child: VerticalDivider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                              ' 200 km/sec',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                                            ),
                                                            Text(
                                                              ' speed',style: TextStyle(color: Colors.black,fontSize: 15),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.01,
                                                  ),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width * 0.967,
                                                    child: Divider(
                                                      height: 20,
                                                      thickness: 1,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.015,
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Stack(
                                                          overflow: Overflow.visible,
                                                          textDirection: TextDirection.ltr,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  ' 250K ',style: TextStyle(color: Colors.orange,fontSize: 25,fontWeight: FontWeight.bold),
                                                                ),
                                                                Text(
                                                                  ' /Person',style: TextStyle(color: Colors.black,fontSize: 15),
                                                                ),
                                                              ],
                                                            ),
                                                            Positioned(
                                                              top: -5,
                                                              left: -5,
                                                              child: Text(
                                                                '\$',style: TextStyle(color: Colors.orange,fontSize: 15),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width*0.2,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                              0.1,
                                                          height: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.06,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(40),
                                                              image: DecorationImage(
                                                                  image: AssetImage('assests/i1.jpg')
                                                              )
                                                          ),
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width*0.01,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                              0.1,
                                                          height: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.06,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(40),
                                                              image: DecorationImage(
                                                                  image: AssetImage('assests/i2.jpg')
                                                              )
                                                          ),
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width*0.01,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                              0.1,
                                                          height: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.06,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(40),
                                                              image: DecorationImage(
                                                                  image: AssetImage('assests/i3.jpg')
                                                              )
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.05,
                                    ),
                                    Container(
                                      child: Stack(
                                        overflow: Overflow.visible,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context).size.width*0.97,
                                            height: MediaQuery.of(context).size.height*0.45,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),color: Colors.white,
                                            ),
                                          ),
                                          Positioned(
                                            top: -30,
                                            child:  Padding(
                                              padding: const EdgeInsets.only(left: 0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(right:60.0),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: MediaQuery.of(context).size.height * 0.188,
                                                            width: MediaQuery.of(context).size.width * 0.387,
                                                            decoration: BoxDecoration(
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors.black,
                                                                  spreadRadius: 10,
                                                                  blurRadius: 30
                                                                )
                                                              ],
                                                                borderRadius:
                                                                BorderRadius.circular(70),
                                                                image: DecorationImage(image: AssetImage('assests/p3.jpg'),fit: BoxFit.fill),color: Colors.white
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:20.0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text(
                                                                  'MARS',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                                                                ),
                                                                Text(
                                                                  'Milkyway Galaxy',style: TextStyle(color: Colors.black,fontSize: 15,),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.02,
                                                  ),
                                                  Container(
                                                    child:  Padding(
                                                      padding: const EdgeInsets.only(left: 30),
                                                      child:
                                                      Text(
                                                        'Explore Strange places on Mars and',style: TextStyle(color: Colors.black,fontSize: 15,),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left:30.0),
                                                      child: Text(
                                                        'experience the great time in your life time.',style: TextStyle(color: Colors.black,fontSize: 15,),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.06,
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Text(
                                                              ' 225m km ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                                            ),
                                                            Text(
                                                              ' from Earth ',style: TextStyle(color: Colors.black,fontSize: 15),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height * 0.04,
                                                          child: VerticalDivider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                              '15 Days ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                                            ),
                                                            Text(
                                                              'Duration ',style: TextStyle(color: Colors.black,fontSize: 15),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          height: MediaQuery.of(context).size.height * 0.04,
                                                          child: VerticalDivider(
                                                            thickness: 1,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                              ' 200 km/sec',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                                            ),
                                                            Text(
                                                              ' speed',style: TextStyle(color: Colors.black,fontSize: 15),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.01,
                                                  ),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width * 0.967,
                                                    child: Divider(
                                                      height: 20,
                                                      thickness: 1,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*0.015,
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Stack(
                                                          overflow: Overflow.visible,
                                                          textDirection: TextDirection.ltr,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  ' 250K ',style: TextStyle(color: Colors.orange,fontSize: 25,fontWeight: FontWeight.bold),
                                                                ),
                                                                Text(
                                                                  ' /Person',style: TextStyle(color: Colors.black,fontSize: 15),
                                                                ),
                                                              ],
                                                            ),
                                                            Positioned(
                                                              top: -5,
                                                              left: -5,
                                                              child: Text(
                                                                '\$',style: TextStyle(color: Colors.orange,fontSize: 15),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width*0.2,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                              0.1,
                                                          height: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.06,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(40),
                                                              image: DecorationImage(
                                                                  image: AssetImage('assests/i1.jpg')
                                                              )
                                                          ),
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width*0.01,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                              0.1,
                                                          height: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.06,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(40),
                                                              image: DecorationImage(
                                                                  image: AssetImage('assests/i2.jpg')
                                                              )
                                                          ),
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context).size.width*0.01,
                                                        ),
                                                        Container(
                                                          width: MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                              0.1,
                                                          height: MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                              0.06,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(40),
                                                              image: DecorationImage(
                                                                  image: AssetImage('assests/i3.jpg')
                                                              )
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,top: 30,bottom: 20),
                                child: Text(
                                  'Packages',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Container(
                            child: Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.explore,size: 30,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                    }),
                                Text(
                                  'Explore',
                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.29,
                          ),
                          Container(
                            child: Column(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.book_outlined,size: 30,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                    }),
                                Text(
                                  'Bookings',
                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.26,
                          ),
                          Container(
                              child: Column(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        Icons.people,size: 30,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {}),
                                  Text(
                                    'People',
                                    style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          ),
        ],
      )
    );
  }
}
