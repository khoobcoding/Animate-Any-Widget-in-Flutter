import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FlutterAnimateApp extends StatefulWidget {
  const FlutterAnimateApp({super.key});

  @override
  State<FlutterAnimateApp> createState() => _FlutterAnimateAppState();
}

class _FlutterAnimateAppState extends State<FlutterAnimateApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 37, 161, 223),
              Color.fromARGB(255, 219, 52, 80)
            ])),
          ),
          centerTitle: true,
          title: const Text(
            'Animate App',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.blue,
                  ).animate().scale(
                      delay: const Duration(seconds: 2),
                      duration: const Duration(seconds: 2),
                      alignment: Alignment.bottomLeft,
                      curve: Curves.slowMiddle),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.green,
                  ).animate().flip(direction: Axis.horizontal),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.red,
                  )
                      .animate()
                      .fade(duration: const Duration(seconds: 2))
                      .boxShadow()
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Animate(
                effects: const [
                  ElevationEffect(),
                  ShimmerEffect(duration: Duration(seconds: 2)),
                  FadeEffect()
                ],
                child: Container(
                  width: 300,
                  height: 200,
                  color: Colors.red,
                  child: Center(
                      child: const Text('Animate',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                          .animate()
                          .shake()),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.blue,
                  ).animate().slide(),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.green,
                  ).animate().rotate(),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.red,
                  ).animate().move(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.cyan,
              )
            ])),
      ),
    );
  }
}
