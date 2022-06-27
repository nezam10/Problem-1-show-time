import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController mapLocationController = TextEditingController();
  TextEditingController speedController = TextEditingController();
  double result = 0.00;
  int vl = 11;
  double mapdata1 = 0.00;
  double speeddata1 = 0.00;

  //speed
  TextEditingController mapLocationController2 = TextEditingController();
  TextEditingController speedController2 = TextEditingController();
  double result2 = 0.00;
  int v2 = 11;
  double mapdata2 = 0.00;
  double speeddata2 = 0.00;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text("Test-1"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25),
                Container(
                  color: Colors.green,
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Persion 1",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "dhaka to padma Bridge",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 40,
                          color: Colors.blueGrey[200],
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, bottom: 10, top: 5),
                            child: TextField(
                              controller: mapLocationController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Enter Map Location",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 40,
                          color: Colors.blueGrey[200],
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, bottom: 10, top: 5),
                            child: TextField(
                              textAlign: TextAlign.start,
                              controller: speedController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Enter Speed",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                mapdata1 =
                                    double.parse(mapLocationController.text);
                                speeddata1 = double.parse(speedController.text);

                                setState(() {
                                  if (mapdata1 >= 1) {
                                    if (speeddata1 >= 1) {
                                      result = mapdata1 / speeddata1;
                                    } else {
                                      result = 0.0;
                                    }
                                  } else {
                                    result = 0.0;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 100,
                                color: Colors.blue,
                                child: Text("Show time"),
                              ),
                            ),
                            SizedBox(width: 50),
                            Text("${result.toStringAsFixed(2)} hr"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  color: Colors.blue,
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Persion 2",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Barisal to padma Bridge",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 40,
                          color: Colors.blueGrey[200],
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, bottom: 10, top: 5),
                            child: TextField(
                              controller: mapLocationController2,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Enter Map Location",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 40,
                          color: Colors.blueGrey[200],
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, bottom: 10, top: 5),
                            child: TextField(
                              textAlign: TextAlign.start,
                              controller: speedController2,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Enter Speed",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                mapdata2 =
                                    double.parse(mapLocationController2.text);
                                speeddata2 =
                                    double.parse(speedController2.text);

                                setState(() {
                                  if (mapdata2 >= 1) {
                                    if (speeddata2 >= 1) {
                                      result2 = mapdata2 / speeddata2;
                                    } else {
                                      result2 = 0.0;
                                    }
                                  } else {
                                    result2 = 0.0;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 100,
                                color: Colors.yellow,
                                child: Text("Show time"),
                              ),
                            ),
                            SizedBox(width: 50),
                            Text("${result2.toStringAsFixed(2)} hr"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
