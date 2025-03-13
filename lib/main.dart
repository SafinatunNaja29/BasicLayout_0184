import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Weather App", style: TextStyle(color: Colors.black, fontSize: 20),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Yogyakarta", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Text("Today", style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20),
            const Text("28°C", style: TextStyle(fontSize: 100, color: Colors.amberAccent,)),
            const SizedBox(height: 10),
            SizedBox(
              width: 300, 
              child: Divider(
                color: Colors.grey, 
              ),
            ),
            const SizedBox(height: 10),
            const Text("Sunny", style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("❆ 5 km/h", style: TextStyle(fontSize: 20, color: Colors.blueAccent)),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Next 7 days", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      WeatherColumn(time: "Now"),
                      WeatherColumn(time: "17.00"),
                      WeatherColumn(time: "20.00"),
                      WeatherColumn(time: "23.00"),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Text("Developed by: safinaaa~", style: TextStyle(fontSize: 14, color: Colors.black),)
          ],
        ),
      ),
    );
  }
}

class WeatherColumn extends StatelessWidget {
  final String time;
  const WeatherColumn({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          time,
          style: const TextStyle(fontSize: 17),
        ),
        const SizedBox(height: 5),
        const Text("❆", style: TextStyle(fontSize: 30, color: Colors.blueAccent)),
        const Text("28°C", style: TextStyle(fontSize: 15, color: Colors.blueAccent)),
        const SizedBox(height: 5),
        const Text("𖣘", style: TextStyle(fontSize: 20, color: Colors.black)),
        const Text(
          "10 km/h",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        const SizedBox(height: 5),
        const Icon(Icons.umbrella, color: Colors.pink),
        const Text("0 %", style: TextStyle(fontSize: 15, color: Colors.pink))
      ],
    );
  }
}