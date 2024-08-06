import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                  'My Rive library',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      cge(
                        const rive.RiveAnimation.asset(
                          stateMachines: ['State Machine 1'],
                          'assets/eye.riv',
                        ),
                      ),
                      const Text(
                        'Hover',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ],
                  ),
                  SizedBox(height: 500, child: dots()),
                  Column(
                    children: [
                      cge(
                        const rive.RiveAnimation.asset(
                            stateMachines: ['State Machine 1'],
                            'assets/browse.riv'),
                      ),
                      const Text(
                        'Trigger',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ],
                  ),
                  SizedBox(height: 500, child: dots()),
                  Column(
                    children: [
                      cge(
                        const rive.RiveAnimation.asset(
                          stateMachines: ['State Machine 1'],
                          'assets/button.riv',
                        ),
                      ),
                      const Text(
                        'Trigger',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

cge(Widget w) {
  return SizedBox(
    height: 400,
    width: 400,
    child: Card(
      color: const Color.fromARGB(255, 241, 241, 241),
      child: w,
    ),
  );
}

Widget dots() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: SizedBox(
      height: null,
      width: 1,
      child: Column(
        children: List.generate(
          400 ~/ 10,
          (index) => Expanded(
            child: Builder(builder: (context) {
              return Container(
                color: index % 2 == 0
                    ? Colors.white
                    : const Color.fromARGB(0, 0, 0, 0),
                height: 1,
              );
            }),
          ),
        ),
      ),
    ),
  );
}
