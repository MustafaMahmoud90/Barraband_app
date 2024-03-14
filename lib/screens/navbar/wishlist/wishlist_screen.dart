// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/sub_title.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
    );
  }
}

class Parallax extends StatefulWidget {
  const Parallax({Key? key}) : super(key: key);

  @override
  State<Parallax> createState() => _ParallaxState();
}

class _ParallaxState extends State<Parallax> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        _onScroll();
      });
    super.initState();
  }

  double _scrollOffset = 0.0;

  void _onScroll() {
    setState(() {
      _scrollOffset = _scrollController.offset;
      if (kDebugMode) {
        print(_scrollOffset);
      }
    });
  }

  final double _layeriSpeed = 0.5;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var layoutHeight = screenSize.height * 3;

    return Container(
      child: Stack(
        children: [
          Positioned(
            bottom: 0 * _layeriSpeed * _scrollOffset,
            right: 0,
            left: 0,
            top: 0,
            child: Container(
              color: Colors.black87,
            ),
            //  Image.asset('assets/icons/x3.jpg',fit: BoxFit.cover,)
          ),
          Positioned.fill(
              child: SingleChildScrollView(
            controller: _scrollController,
            child: SizedBox(
              height: layoutHeight,
              child: const TimelineExample(),
            ),
          )),
        ],
      ),
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
      backgroundColor: darkBlue,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 200,
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: index % 2 == 0
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..rotateX(5),
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Align(
                            alignment: Alignment.center,
                            child: Transform(
                             transform: Matrix4.identity()
                             ..rotateZ(0.13)
                             ..rotateX(10)
                             ,
                              child: SubTitle(
                                  text: "0",
                                  size: 60,
                                  color: kPrimaryLight,
                                  weight: FontWeight.bold),
                            ),
                                ),
                        // margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.indigo[500],
                            borderRadius: BorderRadius.circular(75),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.white,
                                  offset: Offset(3, 3),
                                  spreadRadius: 0.5),
                              BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.white,
                                  offset: Offset(-3, -3),
                                  spreadRadius: 1.5),
                              BoxShadow(
                                  blurRadius: 0.0,
                                  color: Color(0xfffbdb4c),
                                  offset: Offset(-2, -2),
                                  spreadRadius: 1.5),
                              // const BoxShadow(
                              //   blurRadius: 10.0,
                              //   color: kPrimaryLight,
                              //   offset: Offset(-3,-3),
                                          
                              //   spreadRadius: 3.0
                              // ),
                              BoxShadow(
                                  blurRadius: 0.0,
                                  color: Color(0xfffbdb4c),
                                  offset: Offset(2, 2),
                                  spreadRadius: 1.5),
                            ]),
                      ),
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
                          color: Colors.transparent,
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
