import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[200],
        appBar: AppBar(
          title: Text('Weather Forecast'),
          backgroundColor: Colors.indigo[300],
          centerTitle: true,
        ),
        body: _bodyItems(),
      ),
    );
  }
}

Widget _bodyItems() {
  return Column(
    children: [
      _search(),
      SizedBox(height: 10.0),
      _cityDetail(),
      SizedBox(height: 15.0),
      _tempDetail(),
      SizedBox(height: 10.0),
      _extraDetail(),
      SizedBox(height: 10.0),
      _bottomText(),
      _dailyInfo(),
    ],
  );
}

TextField _search() {
  return TextField(
    decoration: InputDecoration(
      border: InputBorder.none,
      labelText: 'Enter city name',
      prefixIcon: Icon(Icons.search),
    ),
  );
}

Column _cityDetail() {
  return Column(
    children: [
      Text(
        'Tashkent, UZB',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      Text(
        'Friday, Aug 3, 2022',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ],
  );
}

Row _tempDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.sunny,
        color: Colors.white,
        size: 60.0,
      ),
      SizedBox(width: 10.0),
      Column(
        children: [
          Text(
            '14 С',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
          Text('light snow'.toUpperCase()),
        ],
      )
    ],
  );
}

Row _extraDetail() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.,
    children: [
      Column(
        children: [
          Icon(Icons.snowing),
          Text('5'),
          Text('km/hr'),
        ],
      ),
      Column(
        children: [
          Icon(Icons.model_training),
          Text('3'),
          Text('%'),
        ],
      ),
      Column(
        children: [
          Icon(Icons.wind_power),
          Text('20'),
          Text('%'),
        ],
      ),
    ],
  );
}

Text _bottomText() {
  return Text('7-day weather forecast'.toUpperCase());
}

Expanded _dailyInfo() {
  return Expanded(
    child: ListView(
      padding: EdgeInsets.all(10.0),
      scrollDirection: Axis.horizontal,
      itemExtent: 200,
      children: [
        Container(
          child: Column(children: [
            Text('Friday'),
            Row(children: [
              Text('6 С'),
              Icon(Icons.sunny),
            ]),
          ]),
        ),
        Container(
          child: Column(children: [
            Text('Saturday'),
            Row(children: [
              Text('6 С'),
              Icon(Icons.sunny),
            ]),
          ]),
        ),
        Container(
          child: Column(children: [
            Text('Sunday'),
            Row(children: [
              Text('6 С'),
              Icon(Icons.sunny),
            ]),
          ]),
        ),
      ],
    ),
  );
}
