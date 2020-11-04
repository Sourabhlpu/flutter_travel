import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatefulWidget {
  @override
  _BottomAppBarWidgetState createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget>
    with TickerProviderStateMixin {
  int _currentSelectedTab;
  AnimationController _animationController;
  Animation _positionAnimation;

  @override
  void initState() {
    super.initState();
    _currentSelectedTab = 0;
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _positionAnimation =
    Tween<double>(begin: -1, end: -1).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topCenter, children: [
      _buildTabsRow(),
      Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: SizedBox(
          height: 40,
          child: Align(
            alignment: Alignment(_positionAnimation.value, 1),
            child: FractionallySizedBox(
              widthFactor: 1 / 5,
              heightFactor: 1,
              child: Align(
                alignment: Alignment(0, 1),
                child: _buildTabsIndicator(),
              ),
            ),
          ),
        ),
      )
    ]);
  }

  Container _buildTabsIndicator() {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.purple,
      ),
    );
  }

  Row _buildTabsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {
            runAnimation(-1.0);
            _currentSelectedTab = 0;
          },
          icon: Icon(Icons.home),
        ),
        IconButton(
          onPressed: () {
            runAnimation(-0.5);
            _currentSelectedTab = 1;
          },
          icon: Icon(Icons.menu),
        ),
        IconButton(
          onPressed: () {
            runAnimation(0.0);
            _currentSelectedTab = 2;
          },
          icon: Icon(Icons.camera),
        ),
        IconButton(
          onPressed: () {
            runAnimation(0.5);
            _currentSelectedTab = 3;
          },
          icon: Icon(Icons.party_mode),
        ),
        IconButton(
          onPressed: () {
            runAnimation(1.0);
            _currentSelectedTab = 4;
          },
          icon: Icon(Icons.account_balance),
        ),
      ],
    );
  }

  runAnimation(double endPosition) {
    _positionAnimation =
        Tween<double>(begin: getPositionForSelectedTab(), end: endPosition)
            .animate(_animationController);
    _animationController.forward(from: getPositionForSelectedTab());
  }

  getPositionForSelectedTab() {
    if (_currentSelectedTab == 0)
      return -1.0;
    else if (_currentSelectedTab == 1)
      return -0.5;
    else if (_currentSelectedTab == 2)
      return 0.0;
    else if (_currentSelectedTab == 3)
      return 0.5;
    else
      return 1.0;
  }
}