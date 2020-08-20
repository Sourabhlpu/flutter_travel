import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_travel/tutorial_progress_indicator.dart';
import 'onboarding_page_clipper.dart';
import 'onboarding_pages_list.dart';

enum DragDirection { LeftToRight, RightToLeft, NONE }

class OnboardingPages extends StatefulWidget {
  @override
  _OnboardingPagesState createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages>
    with SingleTickerProviderStateMixin {
  double _dragPercent = 0.0;
  double _drag = 0.0;
  static int _topPage = 0;
  static int _bottomPage = 1;
  DragDirection _dragDirection = DragDirection.NONE;
  AnimationController _controller;

  void _initAnimationController() {
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this)
          ..addStatusListener(_handleAnimationStatus)
          ..addListener(_handleAnimationListener);
  }

  @override
  void initState() {
    super.initState();
    _initAnimationController();
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
          transform: Matrix4.translationValues(0, _getYOffset(maxOffset), 0),
          child: Opacity(
            opacity: _getOpacity(),
            child: pages[0],
          ),
        ),
        ClipPath(
          child: pages[1],
          clipper: OnboardingPageClipper(dragPercent: _dragPercent.abs()),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(height: 50, child: _buildBottomRow()),
        )
      ]),
    );
  }

  num _getOpacity() => _dragPercent.abs().clamp(0, 1.0);

  double _getYOffset(int maxOffset) => (1 - _dragPercent.abs()) * maxOffset;

  void _handleAnimationListener() {
    setState(() {
      _dragPercent = _controller.value;
    });
  }

  void _handleAnimationStatus(status) {
    if (status == AnimationStatus.completed) {
      if (_dragDirection == DragDirection.RightToLeft)
        _topPage++;
      else
        _topPage--;

      _topPage = _topPage.clamp(0, 2);
      _dragPercent = 0.0;
      _drag = 0.0;
    }
  }

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

  double _getSkipOpacity() {
    if (_topPage == 1)
      return (1 + _dragPercent).clamp(0, 1.0);
    else if (_topPage == 2)
      return 0;
    else
      return 1.0;
  }

  Widget _buildBottomRow() {
    return Row(
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
        TutorialProgressIndicator(
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
    );
  }
}
