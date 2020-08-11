import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum DragDirection { LeftToRight, RightToLeft, NONE }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  double _dragPercent = 0.0;
  double _drag = 0.0;
  static int _topPage = 0;
  static int _bottomPage = 1;
  DragDirection _dragDirection = DragDirection.NONE;
  AnimationController _controller;

  double _getSkipOpacity() {
    if (_topPage == 1)
      return (1 + _dragPercent).clamp(0, 1.0);
    else if (_topPage == 2)
      return 0;
    else
      return 1.0;
  }

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              if (_dragDirection == DragDirection.RightToLeft)
                _topPage++;
              else
                _topPage--;
              _topPage = _topPage.clamp(0, 2);
              _dragPercent = 0.0;
              _drag = 0.0;
            }
          })
          ..addListener(() {
            setState(() {
              _dragPercent = _controller.value;
            });
          });
  }

  static final List<Widget> originalPages = <Widget>[
    Page(
      text: 'Easy Find Hotel ',
      subText:
          'Haselfree booking of flight tickets \nwith full refund on cancelation',
      image: 'images/onboarding1.jpg',
    ),
    Page(
      text: 'Booking Hotel ',
      subText:
          'Haselfree booking of flight tickets \nwith full refund on cancelation',
      image: 'images/onboarding2.jpg',
    ),
    Page(
      text: 'Discover Place ',
      subText:
          'Haselfree booking of flight tickets \nwith full refund on cancelation',
      image: 'images/onboarding3.jpg',
    ),
  ];

  void _handleDragStart(DragStartDetails details) {
    setState(() {
      _dragPercent = 0.0;
      _drag = 0.0;
      _dragDirection = DragDirection.NONE;
    });
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    setState(() {
      _setDragDirection(details);
      if (_dragDirection == DragDirection.RightToLeft) {
        _bottomPage = _topPage + 1;
        _bottomPage = _bottomPage.clamp(0, 2);
      } else if (_dragDirection == DragDirection.LeftToRight) {
        _bottomPage = (_topPage - 1);
        _bottomPage = _bottomPage.clamp(0, 2);
      }
      if (_canMoveBackward() || _canMoveForward()) {
        _drag += details.primaryDelta;
        _dragPercent = (_drag / MediaQuery.of(context).size.width) * 1.5;
      }
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    setState(
      () {
        if (_dragPercent.abs() <= 0.5)
          _controller.reverse(from: _dragPercent.abs());
        else {
          _controller.forward(from: _dragPercent.abs());
        }
      },
    );
  }

  _setDragDirection(DragUpdateDetails details) {
    if (_dragDirection == DragDirection.NONE) {
      _dragDirection = details.primaryDelta.isNegative
          ? DragDirection.RightToLeft
          : DragDirection.LeftToRight;
    }
  }

  bool _canMoveForward() {
    return (_dragDirection == DragDirection.RightToLeft && _topPage < 2);
  }

  bool _canMoveBackward() {
    return (_dragDirection == DragDirection.LeftToRight && _topPage > 0);
  }

  @override
  Widget build(BuildContext context) {
    final maxOffset = 40;
    SystemChrome.setEnabledSystemUIOverlays([]);
    List<Widget> pages = [originalPages[_bottomPage], originalPages[_topPage]];
    return GestureDetector(
      onHorizontalDragStart: _handleDragStart,
      onHorizontalDragEnd: _handleDragEnd,
      onHorizontalDragUpdate: _handleDragUpdate,
      child: Stack(fit: StackFit.expand, children: <Widget>[
        Transform(
          transform: Matrix4.translationValues(
              0, (1 - _dragPercent.abs()) * maxOffset, 0),
          child: Opacity(
            opacity: _dragPercent.abs().clamp(0, 1.0),
            child: pages[0],
          ),
        ),
        ClipPath(
          child: pages[1],
          clipper: MyCustomClipper(dragPercent: _dragPercent.abs()),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 50,
            child: Row(
              children: <Widget>[
                Opacity(
                  opacity: _getSkipOpacity(),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'SKIP',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ),
                ProgressIndicator(
                  dragPercent: _dragDirection == DragDirection.RightToLeft
                      ? -_dragPercent.abs()
                      : _dragPercent.abs(),
                  topPageIndex: _topPage.toDouble(),
                ),
                Opacity(
                  opacity: 1 - _getSkipOpacity(),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'DONE',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

  void _setNextPage() {}
}

class MyCustomClipper extends CustomClipper<Path> {
  final double dragPercent;

  MyCustomClipper({@required this.dragPercent});

  @override
  Path getClip(Size size) {
    var centerPoint = Offset(size.width / 2, size.height);
    double radius = (2 * size.height + 50) * (dragPercent);

    Path path = Path()
      ..addOval(
          Rect.fromCenter(center: centerPoint, width: radius, height: radius))
      ..addRect(new Rect.fromLTWH(0.0, 0.0, size.width, size.height))
      ..fillType = PathFillType.evenOdd;

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class Page extends StatelessWidget {
  final String text;
  final String image;
  final String subText;

  const Page({this.text, this.image, this.subText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Image.asset(
            image,
            width: 250,
            height: 400,
            fit: BoxFit.cover,
          ),
          Spacer(),
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Text(
            subText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black38,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  final int maxOffset = 1;
  final double topPageIndex;
  final double dragPercent;

  const ProgressIndicator({Key key, this.dragPercent, this.topPageIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(
        'maxOffset: $maxOffset topPageIndex: $topPageIndex dragPercent: ${dragPercent.clamp(-1, 1)}');
    print(
        'scroll offset ${(maxOffset - topPageIndex) + dragPercent.clamp(-1, 1)}');
    return Expanded(
      child: Container(
        child: Align(
          alignment: Alignment(
              (maxOffset - topPageIndex) + dragPercent.clamp(-1, 1), 0),
          child: SizedBox(
            width: 150,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 4,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 4,
                    color: topPageIndex >= 1 ? Colors.purple : Colors.grey.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 4,
                    color: topPageIndex == 2 ? Colors.purple : Colors.grey.withOpacity(0.5),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
