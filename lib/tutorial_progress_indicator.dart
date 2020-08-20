import 'package:flutter/material.dart';

class TutorialProgressIndicator extends StatelessWidget {
  final int maxOffset = 1;
  final double topPageIndex;
  final double dragPercent;

  const TutorialProgressIndicator(
      {Key key, this.dragPercent, this.topPageIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Align(
          alignment: Alignment(_getProgressbarXAlignment(), 0),
          child: SizedBox(
            width: 150,
            child: Row(
              children: <Widget>[
                buildIndicator(true),
                SizedBox(width: 1),
                buildIndicator(topPageIndex >= 1),
                SizedBox(width: 1),
                buildIndicator(topPageIndex >= 2)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildIndicator(bool isTopPage) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 4,
        color: isTopPage ? Colors.purple : Colors.grey.withOpacity(0.5),
      ),
    );
  }

  _getProgressbarXAlignment() =>
      (maxOffset - topPageIndex) + dragPercent.clamp(-1, 1);
}
