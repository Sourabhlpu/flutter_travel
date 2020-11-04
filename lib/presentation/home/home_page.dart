import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 0,
          title: Text(
            'Home',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          actions: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://picsum.photos/seed/picsum/200/500'),
                ),
              ),
            )
          ],
        ),
        body:
        Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child:
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4.0,
                              offset: const Offset(0.0, 1.0))
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 8.0),
                        Text('Find what you want', style: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey.shade400, fontSize: 14.0),)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: BottomAppBarWidget(),
        ));
  }
}

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
