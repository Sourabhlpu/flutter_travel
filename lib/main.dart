import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _dragPercent = 0.0;
  double _drag = 0.0;
  static int _topPage = 0;
  static int _bottomPage = 1;
  DragDirection _dragDirection = DragDirection.NONE;


  static final List<Widget> originalPages = <Widget>[
    Page(
      text: 'Page 1',
      color: Colors.yellow,
    ),
    Page(
      text: 'Page 2',
      color: Colors.red,
    ),
    Page(
      text: 'Page 3',
      color: Colors.blue,
    ),
  ];

  void _handleDragStart(DragStartDetails details) {
    print('drag start: ${details.globalPosition.dx}');
    setState(() {
      _dragPercent = 0.0;
      _drag = 0.0;
      _dragDirection = DragDirection.NONE;
    });
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    print('drag update: ${details.primaryDelta}');
    setState(() {
       _setDragDirection(details);
        if(_dragDirection == DragDirection.RightToLeft){
          _bottomPage = _topPage+1;
          _bottomPage = _bottomPage.clamp(0, 2);
        }
        else if(_dragDirection == DragDirection.LeftToRight){
          _bottomPage = (_topPage-1);
          _bottomPage = _bottomPage.clamp(0, 2);
        }
      _drag += details.primaryDelta;
      _dragPercent = (_drag / MediaQuery.of(context).size.width) * 1.5;
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    setState(
      () {
        if (_dragPercent.abs() <= 0.5)
          _dragPercent = 0.0;
        else {
          _dragPercent = 1.0;
          if(_dragDirection == DragDirection.RightToLeft)
          _topPage++;
          else
            _topPage--;
          _topPage = _topPage.clamp(0, 2);
        }
      },
    );

  }

  _setDragDirection(DragUpdateDetails details){
    if (_dragDirection == DragDirection.NONE) {
      _dragDirection = details.primaryDelta.isNegative
          ? DragDirection.RightToLeft
          : DragDirection.LeftToRight;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      originalPages[_bottomPage],
      originalPages[_topPage]
    ];

    return GestureDetector(
      onHorizontalDragStart: _handleDragStart,
      onHorizontalDragEnd: _handleDragEnd,
      onHorizontalDragUpdate: _handleDragUpdate,
      child: Stack(children: <Widget>[
        pages[0],
        ClipPath(
          child: pages[1],
          clipper: MyCustomClipper(dragPercent: _dragPercent.abs()),
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
  final Color color;

  const Page({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
