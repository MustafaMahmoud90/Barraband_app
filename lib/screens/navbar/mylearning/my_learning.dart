import 'package:flutter/material.dart';

class MyLearning extends StatelessWidget {
  const MyLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     
    );
  }
}

class TimelineExample extends StatefulWidget {
  const TimelineExample({Key? key}) : super(key: key);

  @override
  State<TimelineExample> createState() => _TimelineExampleState();
}

class _TimelineExampleState extends State<TimelineExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 9,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: index % 2 == 0
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                index == 6
                    ? Container()
                    : Transform.rotate(
                        angle: index % 2 != 0 ? -0.3 : 0.3,
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 48.0,
                            right: 48.0,
                          ),
                          height: 1,
                          color: Colors.red,
                        ),
                      ),
              ],
            );
          },
        ),
      ),
    );
  }
}